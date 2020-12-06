#!/usr/bin/env python2
import rospy
import time
import math as m
from std_msgs.msg import Float64 as FloatMsg
from geometry_msgs.msg import Vector3, Pose
from scara_kinematics.srv import *
from gazebo_msgs.srv import GetJointProperties, ApplyJointEffort
from std_msgs.msg import Float32

class PDController_3:
    """PID Controller"""

    def __init__(self, P1=100, D1=60,P2=20,D2=8,P3=8,D3=5):
        rospy.init_node('PDController_3')

        self.Kp1 = P1
        self.Kd1 = D1
        self.Kp2 = P2
        self.Kd2 = D2
        self.Kp3 = P3
        self.Kd3 = D3

        self.clear()

        self.sample_time = 0.00
        self.current_time = time.time()
        self.last_time = self.current_time

        rate = rospy.Rate(1)

        rospy.wait_for_service('/gazebo/get_joint_properties')
        rospy.wait_for_service('/gazebo/apply_joint_effort')

        self.set_effort = rospy.ServiceProxy('/gazebo/apply_joint_effort', ApplyJointEffort)

        self.control_service = rospy.Service('move_n_control_3', MoveRobot_3, self.performControl)

        file = open('/home/ben/RBE500/src/scara_kinematics/src/output.txt', 'w')
        file.close()

        print("in init")

    def performControl(self, req):
        joint_name_1 = 'theta_1'
        joint_name_2 = 'theta_2'
        joint_name_3 = 'd_3'
        x = req.x
        y = req.y
        z = req.z
        control_duration = req.t
        try:  # inverse kinematics
            goal_joint_1 = 2*m.atan((2*y + (- (x**4) - 2*(x**2)*(y**2) + 4*(x**2) - (y**4) + 4*(y**2))**(1/2))/((x**2) + 2*x + (y**2)))
            goal_joint_2 = -2*m.atan((-((x**2) + (y**2))*((x**2) + (y**2) - 4))**(1/2)/((x**2) + (y**2)))
            goal_joint_3 = 1 - z
        except ZeroDivisionError:
            print("Desired Position Is A Singularity")
            exit(1)

        curr1_joint = 0
        curr2_joint = 0
        curr3_joint = 0
        start_time = time.time()
        end_time = start_time + control_duration
        activate_joint = 1

        while time.time() < end_time:
            # alternate between activating the 3 joints
            if activate_joint == 1:
                try:
                    currPos = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
                    resp1 = currPos(joint_name_1)
                except rospy.ServiceException as e:
                    print('getProperties failed')
                    exit(1)

                curr1_joint = resp1.position[0]

                self.setSetPoint_1(goal_joint_1)

                effort_1 = float(self.update_1(curr1_joint))

                self.set_effort(joint_name_1, effort_1, rospy.Time(0), rospy.Time(1))

                activate_joint=2
            elif activate_joint == 2:
                    try:
                        currPos = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
                        resp2 = currPos(joint_name_2)

                    except rospy.ServiceException as e:
                        print('getProperties failed')
                        exit(1)

                    curr2_joint = resp2.position[0]

                    self.setSetPoint_2(goal_joint_2)

                    effort_2 = float(self.update_2(curr2_joint))

                    self.set_effort(joint_name_2, effort_2, rospy.Time(0), rospy.Time(1))

                    activate_joint = 3

            elif activate_joint==3:
                        try:
                            currPos = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
                            resp3 = currPos(joint_name_3)
                        except rospy.ServiceException as e:
                            print('getProperties failed')
                            exit(1)

                        curr3_joint = resp3.position[0]

                        self.setSetPoint_3(goal_joint_3)

                        effort_3 = float(self.update_3(curr3_joint))

                        self.set_effort(joint_name_3, effort_3, rospy.Time(0), rospy.Time(1))

                        activate_joint = 1



            file = open('/home/ben/RBE500/src/scara_kinematics/src/output.txt', 'a')
            file.write(str(goal_joint_1) + "," + str(curr1_joint) + ","+str(goal_joint_2) + "," + str(curr2_joint) + "," +str(goal_joint_3) + "," + str(curr3_joint) + "," + str(time.time() - start_time) + "\n")
            file.close()

            print([goal_joint_1, curr1_joint, goal_joint_2, curr2_joint, goal_joint_3, curr3_joint, (time.time() - start_time)])

        return ()

    def clear(self):
        """Clears PID computations and coefficients"""
        self.SetPoint_1 = 0.0
        self.PTerm_1 = 0.0
        self.DTerm_1 = 0.0
        self.last_error_1 = 0.0
        self.second_last_error_1 = 0.0
        self.output_1 = 0.0

        self.SetPoint_2 = 0.0
        self.PTerm_2 = 0.0
        self.DTerm_2 = 0.0
        self.last_error_2 = 0.0
        self.second_last_error_2 = 0.0
        self.output_2 = 0.0

        self.SetPoint_3 = 0.0
        self.PTerm_3 = 0.0
        self.DTerm_3 = 0.0
        self.last_error_3 = 0.0
        self.second_last_error_3 = 0.0
        self.output_3 = 0.0

        # Windup Guard
        self.int_error = 0.0
        self.windup_guard = 20.0



    def update_1(self, feedback_value_1):
        error_1 = self.SetPoint_1 - feedback_value_1

        self.current_time = time.time()
        delta_time = self.current_time - self.last_time
        delta_error_1 = self.second_last_error_1 - 4 * self.last_error_1 + 3 * error_1

        if delta_time >= self.sample_time:

            self.PTerm_1 = self.Kp1 * error_1

            if delta_time > 0:
                self.DTerm_1 = delta_error_1 / (2 * delta_time)

            self.last_time = self.current_time
            self.second_last_error_1 = self.last_error_1
            self.last_error_1 = error_1

            self.output_1 = self.PTerm_1 + (self.Kd1 * self.DTerm_1)

        return self.output_1

    def update_2(self, feedback_value_2):
        error_2 = self.SetPoint_2 - feedback_value_2

        self.current_time = time.time()
        delta_time = self.current_time - self.last_time
        delta_error_2 = self.second_last_error_2 - 4 * self.last_error_2 + 3 * error_2

        if delta_time >= self.sample_time:

            self.PTerm_2 = self.Kp2 * error_2

            if delta_time > 0:
                self.DTerm_2 = delta_error_2 / (2 * delta_time)

            self.last_time = self.current_time
            self.second_last_error_2 = self.last_error_2
            self.last_error_2 = error_2

            self.output_2 = self.PTerm_2 + (self.Kd2 * self.DTerm_2)

        return self.output_2

    def update_3(self, feedback_value_3):
        error_3 = self.SetPoint_3 - feedback_value_3

        self.current_time = time.time()
        delta_time = self.current_time - self.last_time
        delta_error_3 = self.second_last_error_3 - 4 * self.last_error_3 + 3 * error_3

        if delta_time >= self.sample_time:

            self.PTerm_3 = self.Kp3 * error_3

            if delta_time > 0:
                self.DTerm_3 = delta_error_3 / (2 * delta_time)

            self.last_time = self.current_time
            self.second_last_error_3 = self.last_error_3
            self.last_error_3 = error_3

            self.output_3 = self.PTerm_3 + (self.Kd3 * self.DTerm_3)

        return self.output_3


    def setWindup(self, windup):
        self.windup_guard = windup

    def setSampleTime(self, sample_time):
        self.sample_time = sample_time

    def setSetPoint_1(self, set_point_1):
        self.SetPoint_1 = set_point_1

    def setSetPoint_2(self, set_point_2):
        self.SetPoint_2 = set_point_2

    def setSetPoint_3(self, set_point_3):
        self.SetPoint_3 = set_point_3


if __name__ == '__main__':
    pc = PDController_3()
    # pc.performControl()
    # control_node.PDController(self)
    rospy.spin()
