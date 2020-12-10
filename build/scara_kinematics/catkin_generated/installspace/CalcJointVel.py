#!/usr/bin/env python2
import rospy
import numpy as np
import math as m
from math import tan, cos, sin, atan, pi
from scara_kinematics import TaskSpaceVelocities, TaskSpaceVelocitiesResponse

from geometry_msgs.msg import Vector3, Pose
from sensor_msgs.msg import JointState as JointStateMsg
from std_msgs.msg import Float64 as FloatMsg

from time import sleep as Sleep

class CalcJointVel:

    def __init__(self):
        rospy.init_node('CalcJointVel')

        #pose pub
        #self.pose_pub = rospy.Publisher('forkin_pose', Pose, queue_size=10)

        #Set up forward kinematics service
        #self.forkin_service = rospy.Service('forkin', Forkin, self.forkin_service_handler)

        #Set up gazebo subscriber
        #rospy.Subscriber('/test_arm/joint_states', JointStateMsg, self.ForKinCallback, queue_size = 1)

    def CalcTaskVel(self, q_pos, task_vel):
        Lx = 1
        Lz = 2
        L2 = 1

        theta1 = q_pos[0]
        theta2 = q_pos[1]
        d3 = q_pos[2]

        jacob = 
                [[-Lx*sin(theta1) - L2*cos(theta1)*sin(theta2) - L2*cos(theta2)*sin(theta1), - L2*cos(theta1)*sin(theta2) - L2*cos(theta2)*sin(theta1), 0],
                [Lx*cos(theta1) + L2*cos(theta1)*cos(theta2) - L2*sin(theta1)*sin(theta2), L2*cos(theta1)*cos(theta2) - L2*sin(theta1)*sin(theta2), 0],
                [0, 0, -1],
                [0, 0, 0],
                [0, 0, 0],
                [1, 1, 0]]

        invjacob = numpy.linalg.inv(jacob)        
        tsk_vel = np.array(task_vel[0], task_vel[1], task_vel[2], task_vel[3], task_vel[4], task_vel[5]).reshape(6,1)
        taskSpace_vel = np.matmul(invjacob,tsk_vel)

        return taskSpace_vel

if __name__ == '__main__':
    #Wait for serivce stuff
    rospy.wait_for_service('joint_pos and task_vel')
    try:
        mvr = rospy.ServiceProxy('joint_pos and task_vel', TaskSpaceVelocities)
        resp = mvr(ref)
        return (resp.q_pos , resp.task_vel)
    except rospy.ServiceException as e:
        print("Service failed")
    rospy.spin()

