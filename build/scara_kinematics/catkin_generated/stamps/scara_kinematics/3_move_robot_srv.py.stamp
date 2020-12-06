#!/usr/bin/env python
import rospy
import math as m
from std_msgs.msg import Float64 as FloatMsg
from geometry_msgs.msg import Vector3, Pose
from scara_kinematics.srv import *
from time import sleep as Sleep
from std_msgs.msg import Float32


def mvr_client(x, y, z, t):
    print("in handler")
    rospy.wait_for_service('move_n_control_3')
    try:
        mvr = rospy.ServiceProxy('move_n_control_3', MoveRobot_3)
        resp = mvr(x, y, z, t)
        return resp.effort
    except rospy.ServiceException as e:
        print("Service failed")

if __name__=="__main__":

   print(mvr_client(1, 1, 2, 15)) #input paramaters (x position, y position, z position, run duration)

