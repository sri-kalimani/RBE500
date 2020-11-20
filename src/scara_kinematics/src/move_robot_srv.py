#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64 as FloatMsg
from geometry_msgs.msg import Vector3, Pose
from scara_kinematics.srv import *
from time import sleep as Sleep
from std_msgs.msg import Float32

def mvr_client(ref):
    print ("in handler")
    rospy.wait_for_service('move_n_control')
    try:
        mvr = rospy.ServiceProxy('move_n_control', MoveRobot)
        resp = mvr(ref)
        return resp.effort
    except rospy.ServiceException as e:
        print("Service failed")

if __name__=="__main__":
    print(mvr_client(-.3))
