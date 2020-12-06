;; Auto-generated. Do not edit!


(when (boundp 'scara_kinematics::MoveToPoint)
  (if (not (find-package "SCARA_KINEMATICS"))
    (make-package "SCARA_KINEMATICS"))
  (shadow 'MoveToPoint (find-package "SCARA_KINEMATICS")))
(unless (find-package "SCARA_KINEMATICS::MOVETOPOINT")
  (make-package "SCARA_KINEMATICS::MOVETOPOINT"))
(unless (find-package "SCARA_KINEMATICS::MOVETOPOINTREQUEST")
  (make-package "SCARA_KINEMATICS::MOVETOPOINTREQUEST"))
(unless (find-package "SCARA_KINEMATICS::MOVETOPOINTRESPONSE")
  (make-package "SCARA_KINEMATICS::MOVETOPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass scara_kinematics::MoveToPointRequest
  :super ros::object
  :slots (_end_pose ))

(defmethod scara_kinematics::MoveToPointRequest
  (:init
   (&key
    ((:end_pose __end_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _end_pose __end_pose)
   self)
  (:end_pose
   (&rest __end_pose)
   (if (keywordp (car __end_pose))
       (send* _end_pose __end_pose)
     (progn
       (if __end_pose (setq _end_pose (car __end_pose)))
       _end_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _end_pose
    (send _end_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _end_pose
       (send _end_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _end_pose
     (send _end_pose :deserialize buf ptr-) (incf ptr- (send _end_pose :serialization-length))
   ;;
   self)
  )

(defclass scara_kinematics::MoveToPointResponse
  :super ros::object
  :slots (_joints ))

(defmethod scara_kinematics::MoveToPointResponse
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

(defclass scara_kinematics::MoveToPoint
  :super ros::object
  :slots ())

(setf (get scara_kinematics::MoveToPoint :md5sum-) "876693826d47854f5c124f2fdb25826a")
(setf (get scara_kinematics::MoveToPoint :datatype-) "scara_kinematics/MoveToPoint")
(setf (get scara_kinematics::MoveToPoint :request) scara_kinematics::MoveToPointRequest)
(setf (get scara_kinematics::MoveToPoint :response) scara_kinematics::MoveToPointResponse)

(defmethod scara_kinematics::MoveToPointRequest
  (:response () (instance scara_kinematics::MoveToPointResponse :init)))

(setf (get scara_kinematics::MoveToPointRequest :md5sum-) "876693826d47854f5c124f2fdb25826a")
(setf (get scara_kinematics::MoveToPointRequest :datatype-) "scara_kinematics/MoveToPointRequest")
(setf (get scara_kinematics::MoveToPointRequest :definition-)
      "geometry_msgs/Pose end_pose

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

(setf (get scara_kinematics::MoveToPointResponse :md5sum-) "876693826d47854f5c124f2fdb25826a")
(setf (get scara_kinematics::MoveToPointResponse :datatype-) "scara_kinematics/MoveToPointResponse")
(setf (get scara_kinematics::MoveToPointResponse :definition-)
      "geometry_msgs/Pose end_pose

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



(provide :scara_kinematics/MoveToPoint "876693826d47854f5c124f2fdb25826a")


