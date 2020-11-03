#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Quaternion, Pose, Vector3
from scara_kinematics.srv import Ivkin, IvkinResponse

def handle_ivkin(req):
    print ("in handler")
    joints = Vector3()
    pose = req.pose.position
    joints.x = pose.x + 2
    joints.y = pose.y + 5
    joints.z = pose.z + 1
    print (joints)
    return IvkinResponse(joints)

def ivkin_server():
    rospy.init_node('ivkin_server')
    s = rospy.Service('ivkin', Ivkin, handle_ivkin)
    print("Ready to inverse the kinematics")
    rospy.spin()

if __name__=="__main__":
    ivkin_server()
    