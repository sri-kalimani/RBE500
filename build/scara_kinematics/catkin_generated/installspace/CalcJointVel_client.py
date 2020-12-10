#!/usr/bin/env python2
import rospy
import numpy as np
import math as m
from math import tan, cos, sin, atan, pi
from scara_kinematics import TaskSpaceVelocities, TaskSpaceVelocitiesResponse

from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from std_msgs.msg import Float64 as FloatMsg

from time import sleep as Sleep

class CalcJointVel_client:

    def __init__(self):
        rospy.init_node('CalcJointVel_client')

        #pose pub
        #self.pose_pub = rospy.Publisher('forkin_pose', Pose, queue_size=10)

        #Set up forward kinematics service
        #self.forkin_service = rospy.Service('forkin', Forkin, self.forkin_service_handler)

        #Set up gazebo subscriber
        #rospy.Subscriber('/test_arm/joint_states', JointStateMsg, self.ForKinCallback, queue_size = 1)

if __name__ == '__main__':
    rospy.wait_for_service('gazebo/get_joint_properties')
    #read from gazebo
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_1 = get_joint_property('Joint1')
    
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_2 = get_joint_property('Joint2')
    
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_3 = get_joint_property('Joint3')

    q1 = req_1.position[0]
    q2 = req_2.position[0]
    q3 = req_3.position[0]