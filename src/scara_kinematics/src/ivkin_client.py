#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Quaternion, Pose, Vector3
from scara_kinematics.srv import *

def ivkin_client(pose):
    rospy.wait_for_service('ivkin')
    try:
        ivkin = rospy.ServiceProxy('ivkin', Ivkin)
        resp = ivkin(pose)
        return resp.joints
    except rospy.ServiceException as e:
        print ("Service call failed booo")


if __name__ == "__main__":
    test_pose = Pose()
    test_pose.position.x = 1
    test_pose.position.y = 1
    test_pose.position.z = 1
    test_pose.orientation.x = 0
    test_pose.orientation.y = 0
    test_pose.orientation.z = 0
    test_pose.orientation.w = 0
    ivkin_client(test_pose)

