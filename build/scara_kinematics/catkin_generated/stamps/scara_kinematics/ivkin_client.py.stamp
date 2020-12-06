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
    if len(sys.argv) == 8:
        test_pose.position.x = float(sys.argv[1])
        test_pose.position.y = float(sys.argv[2])
        test_pose.position.z = float(sys.argv[3])
        test_pose.orientation.x = float(sys.argv[4])
        test_pose.orientation.y = float(sys.argv[5])
        test_pose.orientation.z = float(sys.argv[6])
        test_pose.orientation.w = float(sys.argv[7])
    else:
        print("Incorrect format of values")
        sys.exit(1)
    print(ivkin_client(test_pose))


