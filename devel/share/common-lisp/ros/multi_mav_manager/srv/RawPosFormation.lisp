; Auto-generated. Do not edit!


(cl:in-package multi_mav_manager-srv)


;//! \htmlinclude RawPosFormation-request.msg.html

(cl:defclass <RawPosFormation-request> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type (cl:vector quadrotor_msgs-msg:FlatOutputs)
   :initform (cl:make-array 0 :element-type 'quadrotor_msgs-msg:FlatOutputs :initial-element (cl:make-instance 'quadrotor_msgs-msg:FlatOutputs))))
)

(cl:defclass RawPosFormation-request (<RawPosFormation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawPosFormation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawPosFormation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multi_mav_manager-srv:<RawPosFormation-request> is deprecated: use multi_mav_manager-srv:RawPosFormation-request instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <RawPosFormation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:goals-val is deprecated.  Use multi_mav_manager-srv:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawPosFormation-request>) ostream)
  "Serializes a message object of type '<RawPosFormation-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawPosFormation-request>) istream)
  "Deserializes a message object of type '<RawPosFormation-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quadrotor_msgs-msg:FlatOutputs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawPosFormation-request>)))
  "Returns string type for a service object of type '<RawPosFormation-request>"
  "multi_mav_manager/RawPosFormationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawPosFormation-request)))
  "Returns string type for a service object of type 'RawPosFormation-request"
  "multi_mav_manager/RawPosFormationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawPosFormation-request>)))
  "Returns md5sum for a message object of type '<RawPosFormation-request>"
  "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawPosFormation-request)))
  "Returns md5sum for a message object of type 'RawPosFormation-request"
  "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawPosFormation-request>)))
  "Returns full string definition for message of type '<RawPosFormation-request>"
  (cl:format cl:nil "quadrotor_msgs/FlatOutputs[] goals~%~%================================================================================~%MSG: quadrotor_msgs/FlatOutputs~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawPosFormation-request)))
  "Returns full string definition for message of type 'RawPosFormation-request"
  (cl:format cl:nil "quadrotor_msgs/FlatOutputs[] goals~%~%================================================================================~%MSG: quadrotor_msgs/FlatOutputs~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawPosFormation-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawPosFormation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RawPosFormation-request
    (cl:cons ':goals (goals msg))
))
;//! \htmlinclude RawPosFormation-response.msg.html

(cl:defclass <RawPosFormation-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RawPosFormation-response (<RawPosFormation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawPosFormation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawPosFormation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multi_mav_manager-srv:<RawPosFormation-response> is deprecated: use multi_mav_manager-srv:RawPosFormation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RawPosFormation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:success-val is deprecated.  Use multi_mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RawPosFormation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:message-val is deprecated.  Use multi_mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawPosFormation-response>) ostream)
  "Serializes a message object of type '<RawPosFormation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawPosFormation-response>) istream)
  "Deserializes a message object of type '<RawPosFormation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawPosFormation-response>)))
  "Returns string type for a service object of type '<RawPosFormation-response>"
  "multi_mav_manager/RawPosFormationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawPosFormation-response)))
  "Returns string type for a service object of type 'RawPosFormation-response"
  "multi_mav_manager/RawPosFormationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawPosFormation-response>)))
  "Returns md5sum for a message object of type '<RawPosFormation-response>"
  "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawPosFormation-response)))
  "Returns md5sum for a message object of type 'RawPosFormation-response"
  "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawPosFormation-response>)))
  "Returns full string definition for message of type '<RawPosFormation-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawPosFormation-response)))
  "Returns full string definition for message of type 'RawPosFormation-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawPosFormation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawPosFormation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RawPosFormation-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RawPosFormation)))
  'RawPosFormation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RawPosFormation)))
  'RawPosFormation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawPosFormation)))
  "Returns string type for a service object of type '<RawPosFormation>"
  "multi_mav_manager/RawPosFormation")