; Auto-generated. Do not edit!


(cl:in-package scara_kinematics-srv)


;//! \htmlinclude MoveRobot-request.msg.html

(cl:defclass <MoveRobot-request> (roslisp-msg-protocol:ros-message)
  ((ref
    :reader ref
    :initarg :ref
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveRobot-request (<MoveRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveRobot-request> is deprecated: use scara_kinematics-srv:MoveRobot-request instead.")))

(cl:ensure-generic-function 'ref-val :lambda-list '(m))
(cl:defmethod ref-val ((m <MoveRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:ref-val is deprecated.  Use scara_kinematics-srv:ref instead.")
  (ref m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-request>) ostream)
  "Serializes a message object of type '<MoveRobot-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ref))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-request>) istream)
  "Deserializes a message object of type '<MoveRobot-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-request>)))
  "Returns string type for a service object of type '<MoveRobot-request>"
  "scara_kinematics/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-request)))
  "Returns string type for a service object of type 'MoveRobot-request"
  "scara_kinematics/MoveRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-request>)))
  "Returns md5sum for a message object of type '<MoveRobot-request>"
  "ca88e5bdc8790ee184161f08748e8aba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-request)))
  "Returns md5sum for a message object of type 'MoveRobot-request"
  "ca88e5bdc8790ee184161f08748e8aba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-request>)))
  "Returns full string definition for message of type '<MoveRobot-request>"
  (cl:format cl:nil "float32 ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-request)))
  "Returns full string definition for message of type 'MoveRobot-request"
  (cl:format cl:nil "float32 ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-request
    (cl:cons ':ref (ref msg))
))
;//! \htmlinclude MoveRobot-response.msg.html

(cl:defclass <MoveRobot-response> (roslisp-msg-protocol:ros-message)
  ((effort
    :reader effort
    :initarg :effort
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveRobot-response (<MoveRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveRobot-response> is deprecated: use scara_kinematics-srv:MoveRobot-response instead.")))

(cl:ensure-generic-function 'effort-val :lambda-list '(m))
(cl:defmethod effort-val ((m <MoveRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:effort-val is deprecated.  Use scara_kinematics-srv:effort instead.")
  (effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot-response>) ostream)
  "Serializes a message object of type '<MoveRobot-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot-response>) istream)
  "Deserializes a message object of type '<MoveRobot-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effort) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot-response>)))
  "Returns string type for a service object of type '<MoveRobot-response>"
  "scara_kinematics/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot-response)))
  "Returns string type for a service object of type 'MoveRobot-response"
  "scara_kinematics/MoveRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot-response>)))
  "Returns md5sum for a message object of type '<MoveRobot-response>"
  "ca88e5bdc8790ee184161f08748e8aba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot-response)))
  "Returns md5sum for a message object of type 'MoveRobot-response"
  "ca88e5bdc8790ee184161f08748e8aba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot-response>)))
  "Returns full string definition for message of type '<MoveRobot-response>"
  (cl:format cl:nil "float32 effort~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot-response)))
  "Returns full string definition for message of type 'MoveRobot-response"
  (cl:format cl:nil "float32 effort~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot-response
    (cl:cons ':effort (effort msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveRobot)))
  'MoveRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot)))
  "Returns string type for a service object of type '<MoveRobot>"
  "scara_kinematics/MoveRobot")