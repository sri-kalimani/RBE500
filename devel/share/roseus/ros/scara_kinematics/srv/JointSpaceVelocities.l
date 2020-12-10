;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::JointSpaceVelocities)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'JointSpaceVelocities (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIES")
  (make-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIES"))
(unless (find-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIESREQUEST")
  (make-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIESREQUEST"))
(unless (find-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIESRESPONSE")
  (make-package "SCARA_KINEMATICS::JOINTSPACEVELOCITIESRESPONSE"))

(in-package "ROS")





(defclass scara_kinematics::JointSpaceVelocitiesRequest
  :super ros::object
  :slots (_q1 _q2 _q3 _x _y _z _wx _wy _wz _q1_dot _q2_dot _q3_dot ))

(defmethod scara_kinematics::JointSpaceVelocitiesRequest
  (:init
   (&key
    ((:q1 __q1) 0.0)
    ((:q2 __q2) 0.0)
    ((:q3 __q3) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    ((:q1_dot __q1_dot) 0.0)
    ((:q2_dot __q2_dot) 0.0)
    ((:q3_dot __q3_dot) 0.0)
    )
   (send-super :init)
   (setq _q1 (float __q1))
   (setq _q2 (float __q2))
   (setq _q3 (float __q3))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
   (setq _q1_dot (float __q1_dot))
   (setq _q2_dot (float __q2_dot))
   (setq _q3_dot (float __q3_dot))
   self)
  (:q1
   (&optional __q1)
   (if __q1 (setq _q1 __q1)) _q1)
  (:q2
   (&optional __q2)
   (if __q2 (setq _q2 __q2)) _q2)
  (:q3
   (&optional __q3)
   (if __q3 (setq _q3 __q3)) _q3)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:q1_dot
   (&optional __q1_dot)
   (if __q1_dot (setq _q1_dot __q1_dot)) _q1_dot)
  (:q2_dot
   (&optional __q2_dot)
   (if __q2_dot (setq _q2_dot __q2_dot)) _q2_dot)
  (:q3_dot
   (&optional __q3_dot)
   (if __q3_dot (setq _q3_dot __q3_dot)) _q3_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _q1
    8
    ;; float64 _q2
    8
    ;; float64 _q3
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _wx
    8
    ;; float64 _wy
    8
    ;; float64 _wz
    8
    ;; float64 _q1_dot
    8
    ;; float64 _q2_dot
    8
    ;; float64 _q3_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _q1
       (sys::poke _q1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q2
       (sys::poke _q2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q3
       (sys::poke _q3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q1_dot
       (sys::poke _q1_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q2_dot
       (sys::poke _q2_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q3_dot
       (sys::poke _q3_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _q1
     (setq _q1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q2
     (setq _q2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q3
     (setq _q3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wx
     (setq _wx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wy
     (setq _wy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wz
     (setq _wz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q1_dot
     (setq _q1_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q2_dot
     (setq _q2_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q3_dot
     (setq _q3_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_kinematics::JointSpaceVelocitiesResponse
  :super ros::object
  :slots ())

(defmethod scara_kinematics::JointSpaceVelocitiesResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass scara_kinematics::JointSpaceVelocities
  :super ros::object
  :slots ())

(setf (get scara_kinematics::JointSpaceVelocities :md5sum-) "25f781ef521cc3be875209dc009a9749")
(setf (get scara_kinematics::JointSpaceVelocities :datatype-) "scara_kinematics/JointSpaceVelocities")
(setf (get scara_kinematics::JointSpaceVelocities :request) scara_kinematics::JointSpaceVelocitiesRequest)
(setf (get scara_kinematics::JointSpaceVelocities :response) scara_kinematics::JointSpaceVelocitiesResponse)

(defmethod scara_kinematics::JointSpaceVelocitiesRequest
  (:response () (instance scara_kinematics::JointSpaceVelocitiesResponse :init)))

(setf (get scara_kinematics::JointSpaceVelocitiesRequest :md5sum-) "25f781ef521cc3be875209dc009a9749")
(setf (get scara_kinematics::JointSpaceVelocitiesRequest :datatype-) "scara_kinematics/JointSpaceVelocitiesRequest")
(setf (get scara_kinematics::JointSpaceVelocitiesRequest :definition-)
      "#Goal: Find joint space velocities

#Inputs
float64 q1
float64 q2
float64 q3

float64 x
float64 y
float64 z
float64 wx
float64 wy
float64 wz

#Outputs
float64 q1_dot
float64 q2_dot
float64 q3_dot
---
")

(setf (get scara_kinematics::JointSpaceVelocitiesResponse :md5sum-) "25f781ef521cc3be875209dc009a9749")
(setf (get scara_kinematics::JointSpaceVelocitiesResponse :datatype-) "scara_kinematics/JointSpaceVelocitiesResponse")
(setf (get scara_kinematics::JointSpaceVelocitiesResponse :definition-)
      "#Goal: Find joint space velocities

#Inputs
float64 q1
float64 q2
float64 q3

float64 x
float64 y
float64 z
float64 wx
float64 wy
float64 wz

#Outputs
float64 q1_dot
float64 q2_dot
float64 q3_dot
---
")



(provide :scara_kinematics/JointSpaceVelocities "25f781ef521cc3be875209dc009a9749")


