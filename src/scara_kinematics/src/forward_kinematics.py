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
from math import tan, cos, sin, atan
#from scara_kinematics.srv import



class forward_kinematics:

    def __init__(self):
        rospy.init_node('forward_kinematics')

        #pose pub
        self.pose_pub = rospy.Publisher('forkin_pose', Pose, queue_size=10)

        #Set up forward kinematics service
        self.forkin_service = rospy.Service('forkin', Forkin, self.forkin_service_handler)

        #Set up gazebo subscriber
        rospy.Subscriber('/test_arm/joint_states', JointStateMsg, self.ForKinCallback, queue_size = 1)

    def forward_kinematics(self, q1, q2, q3):
        lx = 1
        lz = 2
        l2 = 1
        forkin_pose = Pose()
        forkin_pose.position.x = lx*m.cos(q1) + l2*m.cos(q1) * m.cos(q2) - l2*m.sin(q1) * m.sin(q2)
        forkin_pose.position.y = lx*m.sin(q1) + l2*m.cos(q1) * m.sin(q2) - l2*m.sin(q1) * m.cos(q2)
        forkin_pose.position.z = lz - q3
        phi=2*atan(tan(q1/2 + q2/2))
        forkin_pose.orientation.x = cos(phi / 2)
        forkin_pose.orientation.y = sin(phi / 2)
        forkin_pose.orientation.z = 0
        forkin_pose.orientation.w = 0
        return forkin_pose

    def forkin_service_handler(self, forkin_request):
        forkin_pose = self.forward_kinematics(forkin_request.joints.x, forkin_request.joints.y, forkin_request.joints.z)
        return ForkinResponse(forkin_pose)

    def ForKinCallback(self, joint_state_msg):
        joints = joint_state_msg.position
        q1 = joints[0]
        q2 = joints[1]
        q3 = joints[2]
        forkin_pose = self.forward_kinematics(q1, q2, q3)
        self.pose_pub.publish(forkin_pose)


if __name__ == '__main__':
    kinematics_node = forward_kinematics()
    rospy.spin()

