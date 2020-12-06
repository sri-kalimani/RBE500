; Auto-generated. Do not edit!


(cl:in-package scara_kinematics-srv)


;//! \htmlinclude Ivkin-request.msg.html

(cl:defclass <Ivkin-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Ivkin-request (<Ivkin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ivkin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ivkin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<Ivkin-request> is deprecated: use scara_kinematics-srv:Ivkin-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Ivkin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:pose-val is deprecated.  Use scara_kinematics-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ivkin-request>) ostream)
  "Serializes a message object of type '<Ivkin-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ivkin-request>) istream)
  "Deserializes a message object of type '<Ivkin-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ivkin-request>)))
  "Returns string type for a service object of type '<Ivkin-request>"
  "scara_kinematics/IvkinRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ivkin-request)))
  "Returns string type for a service object of type 'Ivkin-request"
  "scara_kinematics/IvkinRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ivkin-request>)))
  "Returns md5sum for a message object of type '<Ivkin-request>"
  "def04ee6e0781ddbf5524d947db623d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ivkin-request)))
  "Returns md5sum for a message object of type 'Ivkin-request"
  "def04ee6e0781ddbf5524d947db623d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ivkin-request>)))
  "Returns full string definition for message of type '<Ivkin-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ivkin-request)))
  "Returns full string definition for message of type 'Ivkin-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ivkin-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ivkin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Ivkin-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude Ivkin-response.msg.html

(cl:defclass <Ivkin-response> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Ivkin-response (<Ivkin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ivkin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ivkin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<Ivkin-response> is deprecated: use scara_kinematics-srv:Ivkin-response instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <Ivkin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:joints-val is deprecated.  Use scara_kinematics-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ivkin-response>) ostream)
  "Serializes a message object of type '<Ivkin-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ivkin-response>) istream)
  "Deserializes a message object of type '<Ivkin-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ivkin-response>)))
  "Returns string type for a service object of type '<Ivkin-response>"
  "scara_kinematics/IvkinResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ivkin-response)))
  "Returns string type for a service object of type 'Ivkin-response"
  "scara_kinematics/IvkinResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ivkin-response>)))
  "Returns md5sum for a message object of type '<Ivkin-response>"
  "def04ee6e0781ddbf5524d947db623d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ivkin-response)))
  "Returns md5sum for a message object of type 'Ivkin-response"
  "def04ee6e0781ddbf5524d947db623d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ivkin-response>)))
  "Returns full string definition for message of type '<Ivkin-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ivkin-response)))
  "Returns full string definition for message of type 'Ivkin-response"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ivkin-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ivkin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Ivkin-response
    (cl:cons ':joints (joints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Ivkin)))
  'Ivkin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Ivkin)))
  'Ivkin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ivkin)))
  "Returns string type for a service object of type '<Ivkin>"
  "scara_kinematics/Ivkin")