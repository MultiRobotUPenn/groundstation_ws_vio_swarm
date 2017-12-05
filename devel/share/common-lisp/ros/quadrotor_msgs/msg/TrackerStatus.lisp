; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude TrackerStatus.msg.html

(cl:defclass <TrackerStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (tracker
    :reader tracker
    :initarg :tracker
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackerStatus (<TrackerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<TrackerStatus> is deprecated: use quadrotor_msgs-msg:TrackerStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:stamp-val is deprecated.  Use quadrotor_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'tracker-val :lambda-list '(m))
(cl:defmethod tracker-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:tracker-val is deprecated.  Use quadrotor_msgs-msg:tracker instead.")
  (tracker m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:status-val is deprecated.  Use quadrotor_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackerStatus>)))
    "Constants for message type '<TrackerStatus>"
  '((:ACTIVE . 0)
    (:SUCCEEDED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackerStatus)))
    "Constants for message type 'TrackerStatus"
  '((:ACTIVE . 0)
    (:SUCCEEDED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackerStatus>) ostream)
  "Serializes a message object of type '<TrackerStatus>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracker))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackerStatus>) istream)
  "Deserializes a message object of type '<TrackerStatus>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackerStatus>)))
  "Returns string type for a message object of type '<TrackerStatus>"
  "quadrotor_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackerStatus)))
  "Returns string type for a message object of type 'TrackerStatus"
  "quadrotor_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackerStatus>)))
  "Returns md5sum for a message object of type '<TrackerStatus>"
  "a7faf35bec75678eba6ebc513e053b6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackerStatus)))
  "Returns md5sum for a message object of type 'TrackerStatus"
  "a7faf35bec75678eba6ebc513e053b6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackerStatus>)))
  "Returns full string definition for message of type '<TrackerStatus>"
  (cl:format cl:nil "time stamp~%string tracker~%uint8 status~%~%# Options for the status~%uint8 ACTIVE    = 0             # Currently active~%uint8 SUCCEEDED = 1             # The tracker has finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackerStatus)))
  "Returns full string definition for message of type 'TrackerStatus"
  (cl:format cl:nil "time stamp~%string tracker~%uint8 status~%~%# Options for the status~%uint8 ACTIVE    = 0             # Currently active~%uint8 SUCCEEDED = 1             # The tracker has finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackerStatus>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'tracker))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackerStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':tracker (tracker msg))
    (cl:cons ':status (status msg))
))
