#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from math import pi
from std_msgs.msg import Float64 as FloatMsg
from gazebo_msgs.srv import *
from scara_kinematics.srv import Forkin, ForkinResponse
from time import sleep as Sleep


class forward_kinematics:

    def __init__(self):
        rospy.init_node('forward_kinematics')

        #pose pub
        self.pose_pub = rospy.Publisher('forkin_pose', Pose, queue_size=10)

        #Set up forward kinematics service
        self.forkin_service = rospy.Service('forkin', Forkin, forkin_service_handler)

        #Set up gazebo subscriber
        rospy.Subscriber('/test_arm/joint_states', JointStateMsg, ForKinCallback, queue_size=0)

    def forward_kinematics(self, q1, q2, q3):
        forkin_pose = Pose()
        forkin_pose.position.x = m.cos(q1) + m.cos(q1) * m.cos(q2) - m.sin(q1) * m.sin(q2)
        forkin_pose.position.y = m.sin(q1) + m.cos(q1) * m.sin(q2) - m.sin(q1) * m.cos(q2)
        forkin_pose.position.z = 1 - q3
        forkin_pose.orientation.x = 0
        forkin_pose.orientation.y = 0
        forkin_pose.orientation.z = 0
        forkin_pose.orientation.w = 1
        return forkin_pose

    def forkin_service_handler(self, forkin_request):
        forkin_pose = self.forward_kinematics(forkin_request.joints.x, forkin_request.joints.y, forkin_request.joints.z)
        return ForkinResponse(forkin_pose)

    def ForKinCallback(self, joint_state_msg):
        joints = joint_state_msg.joints
        q1 = joints[0]
        q2 = joints[1]
        q3 = joints[2]
        forkin_pose = self.forward_kinematics(q1, q2, q3)
        self.pose_pub.publish(forkin_pose)


if __name__ == '__main__':
    kinematics_node = forward_kinematics()
    rospy.spin()

                
