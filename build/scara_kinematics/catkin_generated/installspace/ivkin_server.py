#!/usr/bin/env python2
import rospy
from geometry_msgs.msg import Quaternion, Pose, Vector3
from scara_kinematics.srv import Ivkin, IvkinResponse, Forkin
import math as m
from tf.transformations import *
from numpy.linalg import pinv


lx=1
lz=2
l2=1

def handle_ivkin(req):
    print ("in handler")
    joints = Vector3()
    pose = req.pose.position
    joints.y = m.acos((pose.x**2 + pose.y**2 - lx**2 - l2**2)/(2*lx*l2))
    joints.x = m.atan2(pose.y, pose.x) - m.atan2(l2*m.sin(joints.y), lx+l2+m.cos(joints.y))
    joints.z = lz-pose.z
    print (joints)
    return IvkinResponse(joints)

def ivkin_server():
    rospy.init_node('ivkin_server')
    s = rospy.Service('ivkin', Ivkin, handle_ivkin)
    print("Ready to inverse the kinematics")
    rospy.spin()

if __name__=="__main__":
    ivkin_server()
    