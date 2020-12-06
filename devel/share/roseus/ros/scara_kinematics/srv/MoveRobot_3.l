;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::MoveRobot_3)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'MoveRobot_3 (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOT_3")
  (make-package "SCARA_KINEMATICS::MOVEROBOT_3"))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOT_3REQUEST")
  (make-package "SCARA_KINEMATICS::MOVEROBOT_3REQUEST"))
(unless (find-package "SCARA_KINEMATICS::MOVEROBOT_3RESPONSE")
  (make-package "SCARA_KINEMATICS::MOVEROBOT_3RESPONSE"))

(in-package "ROS")





(defclass scara_kinematics::MoveRobot_3Request
  :super ros::object
  :slots (_x _y _z _t ))

(defmethod scara_kinematics::MoveRobot_3Request
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:t __t) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _t (float __t))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _t
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t
       (sys::poke _t (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t
     (setq _t (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass scara_kinematics::MoveRobot_3Response
  :super ros::object
  :slots (_effort ))

(defmethod scara_kinematics::MoveRobot_3Response
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

(defclass scara_kinematics::MoveRobot_3
  :super ros::object
  :slots ())

(setf (get scara_kinematics::MoveRobot_3 :md5sum-) "7812ec5a5c1995339a863f1a70511e07")
(setf (get scara_kinematics::MoveRobot_3 :datatype-) "scara_kinematics/MoveRobot_3")
(setf (get scara_kinematics::MoveRobot_3 :request) scara_kinematics::MoveRobot_3Request)
(setf (get scara_kinematics::MoveRobot_3 :response) scara_kinematics::MoveRobot_3Response)

(defmethod scara_kinematics::MoveRobot_3Request
  (:response () (instance scara_kinematics::MoveRobot_3Response :init)))

(setf (get scara_kinematics::MoveRobot_3Request :md5sum-) "7812ec5a5c1995339a863f1a70511e07")
(setf (get scara_kinematics::MoveRobot_3Request :datatype-) "scara_kinematics/MoveRobot_3Request")
(setf (get scara_kinematics::MoveRobot_3Request :definition-)
      "float32 x
float32 y
float32 z
float32 t
---
float32 effort

")

(setf (get scara_kinematics::MoveRobot_3Response :md5sum-) "7812ec5a5c1995339a863f1a70511e07")
(setf (get scara_kinematics::MoveRobot_3Response :datatype-) "scara_kinematics/MoveRobot_3Response")
(setf (get scara_kinematics::MoveRobot_3Response :definition-)
      "float32 x
float32 y
float32 z
float32 t
---
float32 effort

")



(provide :scara_kinematics/MoveRobot_3 "7812ec5a5c1995339a863f1a70511e07")


