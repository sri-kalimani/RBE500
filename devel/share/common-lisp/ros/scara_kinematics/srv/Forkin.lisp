; Auto-generated. Do not edit!


(cl:in-package scara_kinematics-srv)


;//! \htmlinclude Forkin-request.msg.html

(cl:defclass <Forkin-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Forkin-request (<Forkin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Forkin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Forkin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<Forkin-request> is deprecated: use scara_kinematics-srv:Forkin-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <Forkin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:joints-val is deprecated.  Use scara_kinematics-srv:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Forkin-request>) ostream)
  "Serializes a message object of type '<Forkin-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Forkin-request>) istream)
  "Deserializes a message object of type '<Forkin-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Forkin-request>)))
  "Returns string type for a service object of type '<Forkin-request>"
  "scara_kinematics/ForkinRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forkin-request)))
  "Returns string type for a service object of type 'Forkin-request"
  "scara_kinematics/ForkinRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Forkin-request>)))
  "Returns md5sum for a message object of type '<Forkin-request>"
  "4938f680caba403e8ef27465568d7ea8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Forkin-request)))
  "Returns md5sum for a message object of type 'Forkin-request"
  "4938f680caba403e8ef27465568d7ea8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Forkin-request>)))
  "Returns full string definition for message of type '<Forkin-request>"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Forkin-request)))
  "Returns full string definition for message of type 'Forkin-request"
  (cl:format cl:nil "geometry_msgs/Vector3 joints~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Forkin-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Forkin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Forkin-request
    (cl:cons ':joints (joints msg))
))
;//! \htmlinclude Forkin-response.msg.html

(cl:defclass <Forkin-response> (roslisp-msg-protocol:ros-message)
  ((end_pose
    :reader end_pose
    :initarg :end_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Forkin-response (<Forkin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Forkin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Forkin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<Forkin-response> is deprecated: use scara_kinematics-srv:Forkin-response instead.")))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <Forkin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:end_pose-val is deprecated.  Use scara_kinematics-srv:end_pose instead.")
  (end_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Forkin-response>) ostream)
  "Serializes a message object of type '<Forkin-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Forkin-response>) istream)
  "Deserializes a message object of type '<Forkin-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Forkin-response>)))
  "Returns string type for a service object of type '<Forkin-response>"
  "scara_kinematics/ForkinResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forkin-response)))
  "Returns string type for a service object of type 'Forkin-response"
  "scara_kinematics/ForkinResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Forkin-response>)))
  "Returns md5sum for a message object of type '<Forkin-response>"
  "4938f680caba403e8ef27465568d7ea8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Forkin-response)))
  "Returns md5sum for a message object of type 'Forkin-response"
  "4938f680caba403e8ef27465568d7ea8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Forkin-response>)))
  "Returns full string definition for message of type '<Forkin-response>"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Forkin-response)))
  "Returns full string definition for message of type 'Forkin-response"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Forkin-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Forkin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Forkin-response
    (cl:cons ':end_pose (end_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Forkin)))
  'Forkin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Forkin)))
  'Forkin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forkin)))
  "Returns string type for a service object of type '<Forkin>"
  "scara_kinematics/Forkin")