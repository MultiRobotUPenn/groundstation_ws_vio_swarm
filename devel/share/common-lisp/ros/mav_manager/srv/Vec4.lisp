; Auto-generated. Do not edit!


(cl:in-package mav_manager-srv)


;//! \htmlinclude Vec4-request.msg.html

(cl:defclass <Vec4-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vec4-request (<Vec4-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vec4-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vec4-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_manager-srv:<Vec4-request> is deprecated: use mav_manager-srv:Vec4-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Vec4-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:goal-val is deprecated.  Use mav_manager-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vec4-request>) ostream)
  "Serializes a message object of type '<Vec4-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vec4-request>) istream)
  "Deserializes a message object of type '<Vec4-request>"
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'goal)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vec4-request>)))
  "Returns string type for a service object of type '<Vec4-request>"
  "mav_manager/Vec4Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec4-request)))
  "Returns string type for a service object of type 'Vec4-request"
  "mav_manager/Vec4Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vec4-request>)))
  "Returns md5sum for a message object of type '<Vec4-request>"
  "44ba4f91582c39f849015d605157d6ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vec4-request)))
  "Returns md5sum for a message object of type 'Vec4-request"
  "44ba4f91582c39f849015d605157d6ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vec4-request>)))
  "Returns full string definition for message of type '<Vec4-request>"
  (cl:format cl:nil "float32[4] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vec4-request)))
  "Returns full string definition for message of type 'Vec4-request"
  (cl:format cl:nil "float32[4] goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vec4-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vec4-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Vec4-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude Vec4-response.msg.html

(cl:defclass <Vec4-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Vec4-response (<Vec4-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vec4-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vec4-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_manager-srv:<Vec4-response> is deprecated: use mav_manager-srv:Vec4-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Vec4-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:success-val is deprecated.  Use mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Vec4-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_manager-srv:message-val is deprecated.  Use mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vec4-response>) ostream)
  "Serializes a message object of type '<Vec4-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vec4-response>) istream)
  "Deserializes a message object of type '<Vec4-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vec4-response>)))
  "Returns string type for a service object of type '<Vec4-response>"
  "mav_manager/Vec4Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec4-response)))
  "Returns string type for a service object of type 'Vec4-response"
  "mav_manager/Vec4Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vec4-response>)))
  "Returns md5sum for a message object of type '<Vec4-response>"
  "44ba4f91582c39f849015d605157d6ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vec4-response)))
  "Returns md5sum for a message object of type 'Vec4-response"
  "44ba4f91582c39f849015d605157d6ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vec4-response>)))
  "Returns full string definition for message of type '<Vec4-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vec4-response)))
  "Returns full string definition for message of type 'Vec4-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vec4-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vec4-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Vec4-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Vec4)))
  'Vec4-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Vec4)))
  'Vec4-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec4)))
  "Returns string type for a service object of type '<Vec4>"
  "mav_manager/Vec4")