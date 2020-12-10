#!/usr/bin/env python2
import rospy
import math as m
from geometry_msgs.msg import Vector3, Pose, Quaternion
from sensor_msgs.msg import JointState
import geometry_msgs

def callback (msg):    
    pub = rospy.Publisher('pose', Pose, queue_size=10)

    joints = msg.position
    q1 = joints[0]
    q2 = joints[1]
    q3 = joints[2]

    x= m.cos(q1)+m.cos(q1)*m.cos(q2)-m.sin(q1)*m.sin(q2)
    y= m.sin(q1)+m.cos(q1)*m.sin(q2)-m.sin(q1)*m.cos(q2)
    z=1-q3

    fk_pose = Pose()
    fk_pose.position.x = x
    fk_pose.position.y = y
    fk_pose.position.z = z
    fk_pose.orientation.x = 0
    fk_pose.orientation.y = 0
    fk_pose.orientation.z = 0
    fk_pose.orientation.w = 0

    pub.publish(fk_pose)


def listener():
    rospy.init_node('scara_kinematics')
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        rospy.Subscriber('joint_states', JointState, callback)
        rate.sleep()
 
    rospy.spin()

if __name__ == '__main__':
    listener()



                
