;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::MoveRobot)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'MoveRobot (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOT")
  (make-package "SCARA_KINEMATICS::MOVEROBOT"))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOTREQUEST")
  (make-package "SCARA_KINEMATICS::MOVEROBOTREQUEST"))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOTRESPONSE")
  (make-package "SCARA_KINEMATICS::MOVEROBOTRESPONSE"))

(in-package "ROS")





(defclass scara_kinematics::MoveRobotRequest
  :super ros::object
  :slots (_ref ))

(defmethod scara_kinematics::MoveRobotRequest
  (:init
   (&key
    ((:ref __ref) 0.0)
    )
   (send-super :init)
   (setq _ref (float __ref))
   self)
  (:ref
   (&optional __ref)
   (if __ref (setq _ref __ref)) _ref)
  (:serialization-length
   ()
   (+
    ;; float32 _ref
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ref
       (sys::poke _ref (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ref
     (setq _ref (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass scara_kinematics::MoveRobotResponse
  :super ros::object
  :slots (_effort ))

(defmethod scara_kinematics::MoveRobotResponse
  (:init
   (&key
    ((:effort __effort) 0.0)
    )
   (send-super :init)
   (setq _effort (float __effort))
   self)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; float32 _effort
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _effort
     (setq _effort (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass scara_kinematics::MoveRobot
  :super ros::object
  :slots ())

(setf (get scara_kinematics::MoveRobot :md5sum-) "ca88e5bdc8790ee184161f08748e8aba")
(setf (get scara_kinematics::MoveRobot :datatype-) "scara_kinematics/MoveRobot")
(setf (get scara_kinematics::MoveRobot :request) scara_kinematics::MoveRobotRequest)
(setf (get scara_kinematics::MoveRobot :response) scara_kinematics::MoveRobotResponse)

(defmethod scara_kinematics::MoveRobotRequest
  (:response () (instance scara_kinematics::MoveRobotResponse :init)))

(setf (get scara_kinematics::MoveRobotRequest :md5sum-) "ca88e5bdc8790ee184161f08748e8aba")
(setf (get scara_kinematics::MoveRobotRequest :datatype-) "scara_kinematics/MoveRobotRequest")
(setf (get scara_kinematics::MoveRobotRequest :definition-)
      "float32 ref
---
float32 effort


")

(setf (get scara_kinematics::MoveRobotResponse :md5sum-) "ca88e5bdc8790ee184161f08748e8aba")
(setf (get scara_kinematics::MoveRobotResponse :datatype-) "scara_kinematics/MoveRobotResponse")
(setf (get scara_kinematics::MoveRobotResponse :definition-)
      "float32 ref
---
float32 effort


")



(provide :scara_kinematics/MoveRobot "ca88e5bdc8790ee184161f08748e8aba")


