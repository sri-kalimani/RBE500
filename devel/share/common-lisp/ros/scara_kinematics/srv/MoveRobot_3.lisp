; Auto-generated. Do not edit!


(cl:in-package scara_kinematics-srv)


;//! \htmlinclude MoveRobot_3-request.msg.html

(cl:defclass <MoveRobot_3-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveRobot_3-request (<MoveRobot_3-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot_3-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot_3-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveRobot_3-request> is deprecated: use scara_kinematics-srv:MoveRobot_3-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MoveRobot_3-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:x-val is deprecated.  Use scara_kinematics-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MoveRobot_3-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:y-val is deprecated.  Use scara_kinematics-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <MoveRobot_3-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:z-val is deprecated.  Use scara_kinematics-srv:z instead.")
  (z m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <MoveRobot_3-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:t-val is deprecated.  Use scara_kinematics-srv:t instead.")
  (t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot_3-request>) ostream)
  "Serializes a message object of type '<MoveRobot_3-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot_3-request>) istream)
  "Deserializes a message object of type '<MoveRobot_3-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot_3-request>)))
  "Returns string type for a service object of type '<MoveRobot_3-request>"
  "scara_kinematics/MoveRobot_3Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot_3-request)))
  "Returns string type for a service object of type 'MoveRobot_3-request"
  "scara_kinematics/MoveRobot_3Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot_3-request>)))
  "Returns md5sum for a message object of type '<MoveRobot_3-request>"
  "7812ec5a5c1995339a863f1a70511e07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot_3-request)))
  "Returns md5sum for a message object of type 'MoveRobot_3-request"
  "7812ec5a5c1995339a863f1a70511e07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot_3-request>)))
  "Returns full string definition for message of type '<MoveRobot_3-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot_3-request)))
  "Returns full string definition for message of type 'MoveRobot_3-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot_3-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot_3-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot_3-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':t (t msg))
))
;//! \htmlinclude MoveRobot_3-response.msg.html

(cl:defclass <MoveRobot_3-response> (roslisp-msg-protocol:ros-message)
  ((effort
    :reader effort
    :initarg :effort
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveRobot_3-response (<MoveRobot_3-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveRobot_3-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveRobot_3-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_kinematics-srv:<MoveRobot_3-response> is deprecated: use scara_kinematics-srv:MoveRobot_3-response instead.")))

(cl:ensure-generic-function 'effort-val :lambda-list '(m))
(cl:defmethod effort-val ((m <MoveRobot_3-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_kinematics-srv:effort-val is deprecated.  Use scara_kinematics-srv:effort instead.")
  (effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveRobot_3-response>) ostream)
  "Serializes a message object of type '<MoveRobot_3-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveRobot_3-response>) istream)
  "Deserializes a message object of type '<MoveRobot_3-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effort) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveRobot_3-response>)))
  "Returns string type for a service object of type '<MoveRobot_3-response>"
  "scara_kinematics/MoveRobot_3Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot_3-response)))
  "Returns string type for a service object of type 'MoveRobot_3-response"
  "scara_kinematics/MoveRobot_3Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveRobot_3-response>)))
  "Returns md5sum for a message object of type '<MoveRobot_3-response>"
  "7812ec5a5c1995339a863f1a70511e07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveRobot_3-response)))
  "Returns md5sum for a message object of type 'MoveRobot_3-response"
  "7812ec5a5c1995339a863f1a70511e07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveRobot_3-response>)))
  "Returns full string definition for message of type '<MoveRobot_3-response>"
  (cl:format cl:nil "float32 effort~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveRobot_3-response)))
  "Returns full string definition for message of type 'MoveRobot_3-response"
  (cl:format cl:nil "float32 effort~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveRobot_3-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveRobot_3-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveRobot_3-response
    (cl:cons ':effort (effort msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveRobot_3)))
  'MoveRobot_3-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveRobot_3)))
  'MoveRobot_3-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveRobot_3)))
  "Returns string type for a service object of type '<MoveRobot_3>"
  "scara_kinematics/MoveRobot_3")