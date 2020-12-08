#!/usr/bin/env python
import rospy
import numpy as np
import math as m
from math import tan, cos, sin, atan, pi
from scara_kinematics.srv import TaskSpaceVelocities
from gazebo_msgs.srv import GetJointProperties, ApplyJointEffort
from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from std_msgs.msg import Float64 as FloatMsg

from time import sleep as Sleep

def client():

    rospy.wait_for_service('gazebo/get_joint_properties')
    
    #read joint positions from gazebo
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_1 = get_joint_property('fixture')
    
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_2 = get_joint_property('dummy_rotation')
    
    get_joint_property = rospy.ServiceProxy('gazebo/get_joint_properties', GetJointProperties)
    req_3 = get_joint_property('d_3')

    q_pos = [0] * 3
    q_vel = [0] * 3

    q_pos[0] = req_1.position[0]
    q_pos[1] = req_2.position[0]
    q_pos[2] = req_3.position[0]

    q_vel[0] = req_1.rate[0]
    q_vel[1] = req_2.rate[0]
    q_vel[2] = req_3.rate[0]

    return (q_pos, q_vel)

if __name__ == '__main__': 
    print (client())
    # ctv_client = CalcTaskVel_client()

