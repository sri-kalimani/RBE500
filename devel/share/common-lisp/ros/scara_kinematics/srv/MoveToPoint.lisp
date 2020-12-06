; Auto-generated. Do not edit!


(cl:in-package scara_kinematics-srv)


;//! \htmlinclude MoveToPoint-request.msg.html

(cl:defclass <MoveToPoint-request> (roslisp-msg-protocol:ros-message)
  ((end_pose
    :reader end_pose
    :initarg :end_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MoveToPoint-request (<MoveToPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveToPoint-request> is deprecated: use scara_kinematics-srv:MoveToPoint-request instead.")))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <MoveToPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:end_pose-val is deprecated.  Use scara_kinematics-srv:end_pose instead.")
  (end_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPoint-request>) ostream)
  "Serializes a message object of type '<MoveToPoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPoint-request>) istream)
  "Deserializes a message object of type '<MoveToPoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPoint-request>)))
  "Returns string type for a service object of type '<MoveToPoint-request>"
  "scara_kinematics/MoveToPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPoint-request)))
  "Returns string type for a service object of type 'MoveToPoint-request"
  "scara_kinematics/MoveToPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPoint-request>)))
  "Returns md5sum for a message object of type '<MoveToPoint-request>"
  "876693826d47854f5c124f2fdb25826a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPoint-request)))
  "Returns md5sum for a message object of type 'MoveToPoint-request"
  "876693826d47854f5c124f2fdb25826a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPoint-request>)))
  "Returns full string definition for message of type '<MoveToPoint-request>"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPoint-request)))
  "Returns full string definition for message of type 'MoveToPoint-request"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPoint-request
    (cl:cons ':end_pose (end_pose msg))
))
;//! \htmlinclude MoveToPoint-response.msg.html

(cl:defclass <MoveToPoint-response> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass MoveToPoint-response (<MoveToPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveToPoint-response> is deprecated: use scara_kinematics-srv:MoveToPoint-response instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <MoveToPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:joints-val is deprecated.  Use scara_kinematics-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPoint-response>) ostream)
  "Serializes a message object of type '<MoveToPoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPoint-response>) istream)
  "Deserializes a message object of type '<MoveToPoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPoint-response>)))
  "Returns string type for a service object of type '<MoveToPoint-response>"
  "scara_kinematics/MoveToPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPoint-response)))
  "Returns string type for a service object of type 'MoveToPoint-response"
  "scara_kinematics/MoveToPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPoint-response>)))
  "Returns md5sum for a message object of type '<MoveToPoint-response>"
  "876693826d47854f5c124f2fdb25826a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPoint-response)))
  "Returns md5sum for a message object of type 'MoveToPoint-response"
  "876693826d47854f5c124f2fdb25826a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPoint-response>)))
  "Returns full string definition for message of type '<MoveToPoint-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPoint-response)))
  "Returns full string definition for message of type 'MoveToPoint-response"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPoint-response
    (cl:cons ':joints (joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToPoint)))
  'MoveToPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToPoint)))
  'MoveToPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPoint)))
  "Returns string type for a service object of type '<MoveToPoint>"
  "scara_kinematics/MoveToPoint")