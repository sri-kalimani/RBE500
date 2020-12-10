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

class CalcJointVel:

    def __init__(self):
        rospy.init_node('CalcJointVel')
        self.control_service = rospy.Service('joint_pos_task_vel', JointSpaceVelocities, self.CalcJointVel)

    def CalcJointVel(self, req):
        q_pos = req.q_pos
        task_vel = req.task_vel
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

        invjacob = numpy.linalg.inv(jacob)        
        tsk_vel = np.array(task_vel[0], task_vel[1], task_vel[2], task_vel[3], task_vel[4], task_vel[5]).reshape(6,1)
        joint_vel = np.matmul(invjacob,tsk_vel)

        return CalcJointVelResponse(joint_vel)

if __name__ == '__main__':
    #Wait for serivce stuff
    cjv = CalcJointVel()
    rospy.spin()
