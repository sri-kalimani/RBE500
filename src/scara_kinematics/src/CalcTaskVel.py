#!/usr/bin/env python
import rospy
import numpy as np
import math as m
from math import tan, cos, sin, atan, pi
from scara_kinematics.srv import *

from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from std_msgs.msg import Float64 as FloatMsg

from time import sleep as Sleep

class CalcTaskVel:

    def __init__(self):
        rospy.init_node('CalcTaskVel')
        self.control_service = rospy.Service('joint_velpos', TaskSpaceVelocities, self.CalcTaskVel)

    def CalcTaskVel(self, req):
        q_pos = req.q_pos
        q_vel = req.q_vel
        Lx = 1
        Lz = 2
        L2 = 1

        theta1 = q_pos[0]
        theta2 = q_pos[1]
        d3 = q_pos[2]

        jacob = [[-Lx*sin(theta1) - L2*cos(theta1)*sin(theta2) - L2*cos(theta2)*sin(theta1), - L2*cos(theta1)*sin(theta2) - L2*cos(theta2)*sin(theta1), 0],
                [Lx*cos(theta1) + L2*cos(theta1)*cos(theta2) - L2*sin(theta1)*sin(theta2), L2*cos(theta1)*cos(theta2) - L2*sin(theta1)*sin(theta2), 0],
                [0, 0, -1],
                [0, 0, 0],
                [0, 0, 0],
                [1, 1, 0]]
        
        joint_vel = np.array(q_vel[0], q_vel[1],q_vel[2]).reshape(3,1)
        task_vel = np.matmul(jacob,joint_vel)
        x = task_vel[0]
        y = task_vel[1]
        z = task_vel[2]
        wx = task_vel[3]
        wy = task_vel[4]
        wz = task_vel[5]

        return TaskSpaceVelocitiesResponse(x,y,z,wx,wy,wz)

if __name__ == '__main__':
    ctv = CalcTaskVel()
    rospy.spin()

