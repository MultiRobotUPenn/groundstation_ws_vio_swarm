; Auto-generated. Do not edit!


(cl:in-package mav_manager-srv)


;//! \htmlinclude GoalTimed-request.msg.html

(cl:defclass <GoalTimed-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0)
   (t_start
    :reader t_start
    :initarg :t_start
    :type cl:real
    :initform 0))
)

(cl:defclass GoalTimed-request (<GoalTimed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalTimed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalTimed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_manager-srv:<GoalTimed-request> is deprecated: use mav_manager-srv:GoalTimed-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GoalTimed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:goal-val is deprecated.  Use mav_manager-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <GoalTimed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:duration-val is deprecated.  Use mav_manager-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 't_start-val :lambda-list '(m))
(cl:defmethod t_start-val ((m <GoalTimed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:t_start-val is deprecated.  Use mav_manager-srv:t_start instead.")
  (t_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalTimed-request>) ostream)
  "Serializes a message object of type '<GoalTimed-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't_start) (cl:floor (cl:slot-value msg 't_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalTimed-request>) istream)
  "Deserializes a message object of type '<GoalTimed-request>"
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'goal)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalTimed-request>)))
  "Returns string type for a service object of type '<GoalTimed-request>"
  "mav_manager/GoalTimedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalTimed-request)))
  "Returns string type for a service object of type 'GoalTimed-request"
  "mav_manager/GoalTimedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalTimed-request>)))
  "Returns md5sum for a message object of type '<GoalTimed-request>"
  "3200a97d30222d1d03961acacb87f306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalTimed-request)))
  "Returns md5sum for a message object of type 'GoalTimed-request"
  "3200a97d30222d1d03961acacb87f306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalTimed-request>)))
  "Returns full string definition for message of type '<GoalTimed-request>"
  (cl:format cl:nil "float32[4] goal~%duration duration~%time t_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalTimed-request)))
  "Returns full string definition for message of type 'GoalTimed-request"
  (cl:format cl:nil "float32[4] goal~%duration duration~%time t_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalTimed-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalTimed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalTimed-request
    (cl:cons ':goal (goal msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':t_start (t_start msg))
))
;//! \htmlinclude GoalTimed-response.msg.html

(cl:defclass <GoalTimed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GoalTimed-response (<GoalTimed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalTimed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalTimed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_manager-srv:<GoalTimed-response> is deprecated: use mav_manager-srv:GoalTimed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoalTimed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:success-val is deprecated.  Use mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GoalTimed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:message-val is deprecated.  Use mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalTimed-response>) ostream)
  "Serializes a message object of type '<GoalTimed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalTimed-response>) istream)
  "Deserializes a message object of type '<GoalTimed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalTimed-response>)))
  "Returns string type for a service object of type '<GoalTimed-response>"
  "mav_manager/GoalTimedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalTimed-response)))
  "Returns string type for a service object of type 'GoalTimed-response"
  "mav_manager/GoalTimedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalTimed-response>)))
  "Returns md5sum for a message object of type '<GoalTimed-response>"
  "3200a97d30222d1d03961acacb87f306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalTimed-response)))
  "Returns md5sum for a message object of type 'GoalTimed-response"
  "3200a97d30222d1d03961acacb87f306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalTimed-response>)))
  "Returns full string definition for message of type '<GoalTimed-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalTimed-response)))
  "Returns full string definition for message of type 'GoalTimed-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalTimed-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalTimed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalTimed-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalTimed)))
  'GoalTimed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalTimed)))
  'GoalTimed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalTimed)))
  "Returns string type for a service object of type '<GoalTimed>"
  "mav_manager/GoalTimed")