#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState
from math import pi
from std_msgs.msg import Float64 as FloatMsg
from gazebo_msgs.srv import *
#from scara_kinematics.srv import *
from time import sleep as Sleep


class Kinematics:

        def __init__(self):
            rospy.init_node('kinematics')

            self.PremadeFloatMsg = FloatMsg()
            self.theta_1_controller_publisher = rospy.Publisher('/test_arm/theta_1_position_controller/command', FloatMsg, queue_size = 1)
            self.theta_2_controller_publisher = rospy.Publisher('/test_arm/theta_2_position_controller/command', FloatMsg, queue_size=1)
            self.d_3_controller_publisher = rospy.Publisher('/test_arm/d_3_position_controller/command', FloatMsg, queue_size=1)
            rospy.Subscriber('/forward_kinematics', Vector3, self.forward_kinematics)
            rospy.wait_for_service('/gazebo/get_joint_properties')
            rospy.wait_for_service('/gazebo/get_link_state')
            self.get_joints_service = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
            self.get_link_service = rospy.ServiceProxy('/gazebo/get_link_state', GetLinkState)
            self.joint_names = ["theta_1", "theta_2", "d_3"]
            self.acceptable_bounds = [0.001, 0.001, 0.001]
            #self.ivkin_service = rospy.ServiceProxy('ivkin', Ivkin)

        def forward_kinematics(self, joint_vector_msg):
            print("Running forward kinematics...")
            [x, y, z] = [None, None, None] #calculate forward kinematics
            ##print calculated forward kinematics
            self.move_to(joint_vector_msg.x, joint_vector_msg.y, joint_vector_msg.z)
            Sleep(7)
            ee_state = self.get_link_service("end_link", '')
            ee_position = ee_state.link_state.pose.position
            #self.is_acceptable([x, y, z], [ee_position.x, ee_position.y, ee_position.z])
            ##compare calculated forward kinematics with output from gazebo
            print(str(ee_position))

        def inverse_kinematics(self, xyz_msg):
            print("running inverse kinematics...")
            pose_msg = Pose()
            pose_msg.position.x = xyz_msg.x
            pose_msg.position.y = xyz_msg.y
            pose_msg.position.z = xyz_msg.z
            joints = self.ivkin_service(pose_msg)
            joints = joints.joints
            #print expected joint values
            self.move_to(joints.x, joints.y, joints.z)
            Sleep(7)
            ee_state = self.get_link_service("end_link",  '')
            ee_position = ee_state.link_state.position
            ##compare goal position with where gazebo is
            self.is_acceptable([xyz_msg.x, xyz_msg.y, xyz_msg.z], [ee_position.x, ee_position.y, ee_position.z])
            print(str(ee_position))

        def is_acceptable(self, calculated, actual):
            success = True
            for i in range(0,3):
                if (abs(calculated[i] - actual[i]) > self.acceptable_bounds[i]):
                    success = False
                    print("Joint " + str(i) + " out of bounds! Error = " + str(abs(calculated[i] - actual[i])))
            if success:
                print("Within range of target")

        def move_to(self, theta_1, theta_2, d_3):
            self.PremadeFloatMsg.data = theta_1
            self.theta_1_controller_publisher.publish(self.PremadeFloatMsg)
            self.PremadeFloatMsg.data = theta_2
            self.theta_2_controller_publisher.publish(self.PremadeFloatMsg)
            self.PremadeFloatMsg.data = d_3
            self.d_3_controller_publisher.publish(self.PremadeFloatMsg)



        def callback(self, msg):
            q1 = msg.x
            q2 = msg.y
            q3 = msg.z
            x= m.cos(q1)+m.cos(q1)*m.cos(q2)-m.sin(q1)*m.sin(q2)
            y= m.sin(q1)+m.cos(q1)*m.sin(q2)-m.sin(q1)*m.cos(q2)
            z=1-q3
            print("For l1=l2=d1=1")
            print("End Effector Position:")
            print("x= %f" %x)
            print("y= %f" %y)
            print("z= %f" %z)


if __name__ == '__main__':
    kinematics_node = Kinematics()
    rospy.spin()