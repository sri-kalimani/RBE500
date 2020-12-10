;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::TaskSpaceVelocities)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'TaskSpaceVelocities (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::TASKSPACEVELOCITIES")
  (make-package "SCARA_KINEMATICS::TASKSPACEVELOCITIES"))
(unless (find-package "SCARA_KINEMATICS::TASKSPACEVELOCITIESREQUEST")
  (make-package "SCARA_KINEMATICS::TASKSPACEVELOCITIESREQUEST"))
(unless (find-package "SCARA_KINEMATICS::TASKSPACEVELOCITIESRESPONSE")
  (make-package "SCARA_KINEMATICS::TASKSPACEVELOCITIESRESPONSE"))

(in-package "ROS")





(defclass scara_kinematics::TaskSpaceVelocitiesRequest
  :super ros::object
  :slots (_q_pos _q_vel ))

(defmethod scara_kinematics::TaskSpaceVelocitiesRequest
  (:init
   (&key
    ((:q_pos __q_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:q_vel __q_vel) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _q_pos __q_pos)
   (setq _q_vel __q_vel)
   self)
  (:q_pos
   (&optional __q_pos)
   (if __q_pos (setq _q_pos __q_pos)) _q_pos)
  (:q_vel
   (&optional __q_vel)
   (if __q_vel (setq _q_vel __q_vel)) _q_vel)
  (:serialization-length
   ()
   (+
    ;; float64[] _q_pos
    (* 8    (length _q_pos)) 4
    ;; float64[] _q_vel
    (* 8    (length _q_vel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _q_pos
     (write-long (length _q_pos) s)
     (dotimes (i (length _q_pos))
       (sys::poke (elt _q_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _q_vel
     (write-long (length _q_vel) s)
     (dotimes (i (length _q_vel))
       (sys::poke (elt _q_vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _q_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _q_vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass scara_kinematics::TaskSpaceVelocitiesResponse
  :super ros::object
  :slots (_x _y _z _wx _wy _wz ))

(defmethod scara_kinematics::TaskSpaceVelocitiesResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
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
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:serialization-length
   ()
   (+
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;;
   self)
  )

(defclass scara_kinematics::TaskSpaceVelocities
  :super ros::object
  :slots ())

(setf (get scara_kinematics::TaskSpaceVelocities :md5sum-) "9a192cb5d2f6b202f97255024ecba4e7")
(setf (get scara_kinematics::TaskSpaceVelocities :datatype-) "scara_kinematics/TaskSpaceVelocities")
(setf (get scara_kinematics::TaskSpaceVelocities :request) scara_kinematics::TaskSpaceVelocitiesRequest)
(setf (get scara_kinematics::TaskSpaceVelocities :response) scara_kinematics::TaskSpaceVelocitiesResponse)

(defmethod scara_kinematics::TaskSpaceVelocitiesRequest
  (:response () (instance scara_kinematics::TaskSpaceVelocitiesResponse :init)))

(setf (get scara_kinematics::TaskSpaceVelocitiesRequest :md5sum-) "9a192cb5d2f6b202f97255024ecba4e7")
(setf (get scara_kinematics::TaskSpaceVelocitiesRequest :datatype-) "scara_kinematics/TaskSpaceVelocitiesRequest")
(setf (get scara_kinematics::TaskSpaceVelocitiesRequest :definition-)
      "#Goal: Find task space velocities

#Inputs
float64[] q_pos

float64[] q_vel
---
#Outputs
float64 x
float64 y
float64 z
float64 wx
float64 wy
float64 wz
")

(setf (get scara_kinematics::TaskSpaceVelocitiesResponse :md5sum-) "9a192cb5d2f6b202f97255024ecba4e7")
(setf (get scara_kinematics::TaskSpaceVelocitiesResponse :datatype-) "scara_kinematics/TaskSpaceVelocitiesResponse")
(setf (get scara_kinematics::TaskSpaceVelocitiesResponse :definition-)
      "#Goal: Find task space velocities

#Inputs
float64[] q_pos

float64[] q_vel
---
#Outputs
float64 x
float64 y
float64 z
float64 wx
float64 wy
float64 wz
")



(provide :scara_kinematics/TaskSpaceVelocities "9a192cb5d2f6b202f97255024ecba4e7")


