#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from math import pi
from std_msgs.msg import Float64 as FloatMsg
from gazebo_msgs.srv import *
#from scara_kinematics.srv import *
from time import sleep as Sleep


class forward_kinematics:

        def __init__(self):
            rospy.init_node('forward_kinematics')

            self.posemsg = Pose()
            self.posemsg.orientation.x = 0.0
            self.posemsg.orientation.y = 0.0
            self.posemsg.orientation.z = 0.0
            self.posemsg.orientation.w = 0.0

            rospy.wait_for_service('/gazebo_motion')

            rospy.Subscriber('/test_arm/joint_states', JointStateMsg, ForKinCallback, queue_size = 0)
            self.pose_pub = rospy.Publisher('pose', Pose, queue_size=10)

            self.acceptable_bounds = [0.001, 0.001, 0.001]

        def forward_kinematics(self, q1, q2, q3):
            x = m.cos(q1) + m.cos(q1) * m.cos(q2) - m.sin(q1) * m.sin(q2)
            y = m.sin(q1) + m.cos(q1) * m.sin(q2) - m.sin(q1) * m.cos(q2)
            z = 1 - q3
            return x, y, z


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



        def ForKinCallback(self, joint_state_msg):

            joints = joint_state_msg.position
            q1 = joints[0]
            q2 = joints[1]
            q3 = joints[2]

            x, y, z = self.forward_kinematics(q1, q2, q3)

            self.posemsg.position.x = x
            self.posemsg.position.y = y
            self.posemsg.position.z = z

            self.pose_pub.publish(self.posemsg)


if __name__ == '__main__':
    kinematics_node = Kinematics()
    rospy.spin()