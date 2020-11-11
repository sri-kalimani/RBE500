#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64 as FloatMsg
from geometry_msgs.msg import Vector3, Pose
from scara_kinematics.srv import Forkin, Ivkin, MoveToJoints, MoveToJointsResponse, MoveToPoint, MoveToPointResponse
from time import sleep as Sleep

class GazeboKinematicsInterface:

    def __init__(self):
        rospy.init_node('GazeboKinematicsInterface')

        #Controller setup
        self.PremadeFloatMsg = FloatMsg()
        self.theta_1_controller_publisher = rospy.Publisher('/test_arm/theta_1_position_controller/command', FloatMsg,
                                                            queue_size=1)
        self.theta_2_controller_publisher = rospy.Publisher('/test_arm/theta_2_position_controller/command', FloatMsg,
                                                            queue_size=1)
        self.d_3_controller_publisher = rospy.Publisher('/test_arm/d_3_position_controller/command', FloatMsg,
                                                        queue_size=1)
        #Setup forward kinematics interface
        rospy.wait_for_service('forkin')
        self.forkin_client = rospy.ServiceProxy('forkin', Forkin)

        #Setup inverse kinematics interface
        rospy.wait_for_service('ivkin')
        self.ivkin_client = rospy.ServiceProxy('ivkin', Ivkin)

        #Gazebo service setup
        rospy.wait_for_service('/gazebo/get_joint_properties')
        rospy.wait_for_service('/gazebo/get_link_state')

        #Motion service setup
        self.MoveToJoints_service = rospy.Service('move_to_joints', MoveToJoints, self.move_to_joints)
        self.MoveToPoint_service = rospy.Service('move_to_point', MoveToPoint)

        self.acceptable_bounds = [0.0, 0.0, 0.0]
        ####get params!!!!

    def move_to(self, t1, t2, d3):
        self.PremadeFloatMsg.data = t1
        self.theta_1_controller_publisher.publish(self.PremadeFloatMsg)
        self.PremadeFloatMsg.data = t2
        self.theta_2_controller_publisher.publish(self.PremadeFloatMsg)
        self.PremadeFloatMsg.data = d3
        self.d_3_controller_publisher.publish(self.PremadeFloatMsg)

    def move_to_joints(self, move_to_joints_req):
        #motion
        self.move_to(move_to_joints_req.joints.x, move_to_joints_req.joints.y, move_to_joints_req.joints.z)
        Sleep(10)

        #calculate expected end effector position
        forkin_response = self.forkin_client(move_to_joints_req.joints)
        calculated_end = forkin_response.end_pose

        #Comparison
        ee_state = self.get_link_service("end_link", '')
        print("Calculated pose:")
        print(str(calculated_end))
        print("Actual pose:")
        ee_pose = ee_state.link_state.pose
        print(str(ee_pose))
        return MoveToJointsResponse(ee_pose)

    def move_to_point(self, move_to_point_req):
        #calculate joints
        ivkin_response = self.ivkin_client(move_to_point_req.end_pose)
        ivkin_joints = ivkin_response.joints

        #move to
        self.move_to(ivkin_joints.x, ivkin_joints.y, ivkin_joints.z)
        Sleep(10)

        #Comparison
        ee_state = self.get_link_service("end_link", '')
        print("Goal end pose:")
        print(str(move_to_point_req.end_pose))
        print("Actual pose using calculated joints:")
        ee_pose = ee_state.link_state.pose
        print(str(ee_pose))
        return MoveToJointsResponse(ee_pose)



if __name__ == '__main__':
    gazebo_kinematics_interface = GazeboKinematicsInterface()
    rospy.spin()