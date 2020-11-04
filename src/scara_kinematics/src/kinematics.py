#!/usr/bin/env python
import rospy
import math as m
from geometry_msgs.msg import Vector3
from sensor_msgs.msg import JointState
from math import pi


class Kinematics:

        def __init__(self):
            rospy.init_node('kinematics')

            self.joint_state = None
            self.JS_publisher = rospy.Publisher('/myJoints', JointState, queue_size=1)

            rospy.Subscriber('scara_joint', Vector3, self.callback)

            # temporary setup
            self.joint_state_setup_sub = rospy.Subscriber('joint_states', JointState, self.create_JS)
            while self.joint_state is None:
                rospy.sleep(1)



        def create_JS(self, JS_msg):
            self.joint_state = JS_msg
            self.joint_state_setup_sub.unregister()
            print("JS received, unsubscribing")
            joints = list(self.joint_state.position)
            joints[1] = pi
            self.joint_state.position = tuple(joints)
            rospy.sleep(1)
            self.JS_publisher.publish(self.joint_state)
            print("Initial joint state set")


        def callback(self, msg):
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


              
