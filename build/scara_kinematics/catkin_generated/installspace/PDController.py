#!/usr/bin/env python2
import rospy
import time
from std_msgs.msg import Float64 as FloatMsg
from geometry_msgs.msg import Vector3, Pose
from scara_kinematics.srv import *
from gazebo_msgs.srv import GetJointProperties, ApplyJointEffort
from std_msgs.msg import Float32

class PDController:
    """PID Controller"""

    def __init__(self, P=200, D=120):
        rospy.init_node('PDController')

        self.Kp = P
        self.Kd = D

        self.clear()

        self.sample_time = 0.00
        self.current_time = time.time()
        self.last_time = self.current_time

        rate = rospy.Rate(1)

        rospy.wait_for_service('/gazebo/get_joint_properties')
        rospy.wait_for_service('/gazebo/apply_joint_effort')

        self.set_effort = rospy.ServiceProxy('/gazebo/apply_joint_effort',ApplyJointEffort)

        self.control_service = rospy.Service('move_n_control', MoveRobot, self.performControl)

        file = open('RBE500/src/scara_kinematics/src/output.txt', 'w')
        file.close()
               
        print("in init")

    def performControl(self, req):

        joint_name = 'd_3'        
        goalZ_end = req.ref
        goalZ_joint=1-goalZ_end
        currZ_joint = 0
        start_time = time.time()
        end_time = start_time + 10
        while time.time()<end_time:
            try:
                currPos = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
                resp = currPos(joint_name)
            except rospy.ServiceException as e:
                print('getProperties failed')
                exit(1)

            currZ_joint = resp.position[0]
            currZ_end= 1-currZ_joint

            self.setSetPoint(goalZ_joint)
            effort = float(self.update(currZ_joint))

            self.set_effort(joint_name, effort, rospy.Time(1), rospy.Time(1))

            file = open('RBE500/src/scara_kinematics/src/output.txt', 'a')
            file.write(str(goalZ_end)+","+str(currZ_end)+","+str(time.time()-start_time)+"\n")
            file.close()

            print(currZ_end)

        return()

    def clear(self):
        """Clears PID computations and coefficients"""
        self.SetPoint = 0.0

        self.PTerm = 0.0
        # self.ITerm = 0.0
        self.DTerm = 0.0
        self.last_error = 0.0
        self.last_error_2 = 0.0

        # Windup Guard
        self.int_error = 0.0
        self.windup_guard = 20.0

        self.output = 0.0

    def update(self, feedback_value):
        error = self.SetPoint - feedback_value

        self.current_time = time.time()
        delta_time = self.current_time - self.last_time
        delta_error = self.last_error_2- 4*self.last_error + 3*error

        if (delta_time >= self.sample_time):

            self.PTerm = self.Kp*error

            if delta_time > 0:
                self.DTerm = delta_error / (2*delta_time)

            self.last_time = self.current_time
            self.last_error_2 = self.last_error
            self.last_error = error

            self.output = self.PTerm + (self.Kd * self.DTerm)
            
        return self.output

    def setWindup(self, windup):
        self.windup_guard = windup

    def setSampleTime(self, sample_time):
        self.sample_time = sample_time

    def setSetPoint(self, set_point):
        self.SetPoint = set_point

if __name__ == '__main__':
    pc = PDController()
    # pc.performControl()
    # control_node.PDController(self)
    rospy.spin()
