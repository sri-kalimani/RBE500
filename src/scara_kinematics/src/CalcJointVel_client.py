#!/usr/bin/env python
import rospy
import numpy as np
import math as m
from math import tan, cos, sin, atan, pi
from scara_kinematics.srv import JointSpaceVelocities
from gazebo_msgs.srv import GetJointProperties, ApplyJointEffort, GetModelState
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

    #read task velocities from gazebo
    get_model_state = rospy.ServiceProxy('gazebo/get_model_state', GetModelState)
    req_4 = get_model_state('test_arm', 'ground_plane')

    #create empty arrays to store values from gazebo
    q_pos = [0] * 3
    task_vel = [0] * 6

    #insert the gazebo values
    q_pos[0] = req_1.position[0]
    q_pos[1] = req_2.position[0]
    q_pos[2] = req_3.position[0]

    task_vel[0] = req_4.twist.linear.x
    task_vel[1] = req_4.twist.linear.y
    task_vel[2] = req_4.twist.linear.z
    task_vel[3] = req_4.twist.angular.x
    task_vel[4] = req_4.twist.angular.y
    task_vel[5] = req_4.twist.angular.z

    return (q_pos, task_vel)
if __name__ == '__main__':
    print (client())