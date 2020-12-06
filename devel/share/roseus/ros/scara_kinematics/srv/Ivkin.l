;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::Ivkin)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'Ivkin (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::IVKIN")
  (make-package "SCARA_KINEMATICS::IVKIN"))
(unless (find-package "SCARA_KINEMATICS::IVKINREQUEST")
  (make-package "SCARA_KINEMATICS::IVKINREQUEST"))
(unless (find-package "SCARA_KINEMATICS::IVKINRESPONSE")
  (make-package "SCARA_KINEMATICS::IVKINRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass scara_kinematics::IvkinRequest
  :super ros::object
  :slots (_pose ))

(defmethod scara_kinematics::IvkinRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass scara_kinematics::IvkinResponse
  :super ros::object
  :slots (_joints ))

(defmethod scara_kinematics::IvkinResponse
  (:init
   (&key
    ((:joints __joints) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _joints
    (send _joints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _joints
       (send _joints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _joints
     (send _joints :deserialize buf ptr-) (incf ptr- (send _joints :serialization-length))
   ;;
   self)
  )

(defclass scara_kinematics::Ivkin
  :super ros::object
  :slots ())

(setf (get scara_kinematics::Ivkin :md5sum-) "def04ee6e0781ddbf5524d947db623d7")
(setf (get scara_kinematics::Ivkin :datatype-) "scara_kinematics/Ivkin")
(setf (get scara_kinematics::Ivkin :request) scara_kinematics::IvkinRequest)
(setf (get scara_kinematics::Ivkin :response) scara_kinematics::IvkinResponse)

(defmethod scara_kinematics::IvkinRequest
  (:response () (instance scara_kinematics::IvkinResponse :init)))

(setf (get scara_kinematics::IvkinRequest :md5sum-) "def04ee6e0781ddbf5524d947db623d7")
(setf (get scara_kinematics::IvkinRequest :datatype-) "scara_kinematics/IvkinRequest")
(setf (get scara_kinematics::IvkinRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/Vector3 joints

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get scara_kinematics::IvkinResponse :md5sum-) "def04ee6e0781ddbf5524d947db623d7")
(setf (get scara_kinematics::IvkinResponse :datatype-) "scara_kinematics/IvkinResponse")
(setf (get scara_kinematics::IvkinResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/Vector3 joints

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :scara_kinematics/Ivkin "def04ee6e0781ddbf5524d947db623d7")


