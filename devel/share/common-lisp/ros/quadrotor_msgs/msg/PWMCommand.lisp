; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude PWMCommand.msg.html

(cl:defclass <PWMCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pwm
    :reader pwm
    :initarg :pwm
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PWMCommand (<PWMCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWMCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWMCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<PWMCommand> is deprecated: use quadrotor_msgs-msg:PWMCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PWMCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <PWMCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:pwm-val is deprecated.  Use quadrotor_msgs-msg:pwm instead.")
  (pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWMCommand>) ostream)
  "Serializes a message object of type '<PWMCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pwm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWMCommand>) istream)
  "Deserializes a message object of type '<PWMCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'pwm) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'pwm)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWMCommand>)))
  "Returns string type for a message object of type '<PWMCommand>"
  "quadrotor_msgs/PWMCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWMCommand)))
  "Returns string type for a message object of type 'PWMCommand"
  "quadrotor_msgs/PWMCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWMCommand>)))
  "Returns md5sum for a message object of type '<PWMCommand>"
  "eb2dd9b2c30eeae5ab3d52000198a3ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWMCommand)))
  "Returns md5sum for a message object of type 'PWMCommand"
  "eb2dd9b2c30eeae5ab3d52000198a3ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWMCommand>)))
  "Returns full string definition for message of type '<PWMCommand>"
  (cl:format cl:nil "Header header~%# pwm values should be between 0 (1ms pulse width) and 1 (2ms pulse width)~%float64[2] pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWMCommand)))
  "Returns full string definition for message of type 'PWMCommand"
  (cl:format cl:nil "Header header~%# pwm values should be between 0 (1ms pulse width) and 1 (2ms pulse width)~%float64[2] pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWMCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pwm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWMCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PWMCommand
    (cl:cons ':header (header msg))
    (cl:cons ':pwm (pwm msg))
))
