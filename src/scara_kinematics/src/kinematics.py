#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3

def callback (msg):
    q1 = msg.x
    q2 = msg.y
    q3 = msg.z
    x= m.cos(q1)+m.cos(q1)*m.cos(q2)-m.sin(q1)*m.sin(q2)
    y= m.sin(q1)+m.cos(q1)*m.sin(q2)-m.sin(q1)*m.cos(q2)
    z=1-q3
    print("For l1=l2=d1=1")
    print("End Effector Position:")
    print("x= %f" %x)
    print("y= %f" %y)
    print("z= %f" %z)

rospy.init_node('scara_kinematics')

sub = rospy.Subscriber ('scara_joint', Vector3, callback)

r = rospy.Rate(1)
while not rospy.is_shutdown():
    r.sleep()
              
