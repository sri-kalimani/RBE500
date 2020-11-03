#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3, Pose, Quaternion
import geometry_msgs

def callback (msg):    
    pub = rospy.Publisher('pose', Pose, queue_size=10)

    q1 = msg.x
    q2 = msg.y
    q3 = msg.z
    x= m.cos(q1)+m.cos(q1)*m.cos(q2)-m.sin(q1)*m.sin(q2)
    y= m.sin(q1)+m.cos(q1)*m.sin(q2)-m.sin(q1)*m.cos(q2)
    z=1-q3
    # print("For l1=l2=d1=1")
    # print("End Effector Position:")
    # print("x= %f" %x)
    # print("y= %f" %y)
    # print("z= %f" %z)

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
        rospy.Subscriber ('scara_joint', Vector3, callback)
        rate.sleep()
 
    rospy.spin()

if __name__ == '__main__':
    listener()



                
