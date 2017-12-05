; Auto-generated. Do not edit!


(cl:in-package multi_mav_manager-srv)


;//! \htmlinclude Formation-request.msg.html

(cl:defclass <Formation-request> (roslisp-msg-protocol:ros-message)
  ((param_names
    :reader param_names
    :initarg :param_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (param_vals
    :reader param_vals
    :initarg :param_vals
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (spacing
    :reader spacing
    :initarg :spacing
    :type cl:float
    :initform 0.0)
   (center
    :reader center
    :initarg :center
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Formation-request (<Formation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Formation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Formation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multi_mav_manager-srv:<Formation-request> is deprecated: use multi_mav_manager-srv:Formation-request instead.")))

(cl:ensure-generic-function 'param_names-val :lambda-list '(m))
(cl:defmethod param_names-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:param_names-val is deprecated.  Use multi_mav_manager-srv:param_names instead.")
  (param_names m))

(cl:ensure-generic-function 'param_vals-val :lambda-list '(m))
(cl:defmethod param_vals-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:param_vals-val is deprecated.  Use multi_mav_manager-srv:param_vals instead.")
  (param_vals m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:roll-val is deprecated.  Use multi_mav_manager-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:pitch-val is deprecated.  Use multi_mav_manager-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:yaw-val is deprecated.  Use multi_mav_manager-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'spacing-val :lambda-list '(m))
(cl:defmethod spacing-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:spacing-val is deprecated.  Use multi_mav_manager-srv:spacing instead.")
  (spacing m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Formation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:center-val is deprecated.  Use multi_mav_manager-srv:center instead.")
  (center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Formation-request>) ostream)
  "Serializes a message object of type '<Formation-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'param_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'param_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'param_vals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'param_vals))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'spacing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'center))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Formation-request>) istream)
  "Deserializes a message object of type '<Formation-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'param_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'param_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'param_vals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'param_vals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'spacing) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'center) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'center)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Formation-request>)))
  "Returns string type for a service object of type '<Formation-request>"
  "multi_mav_manager/FormationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Formation-request)))
  "Returns string type for a service object of type 'Formation-request"
  "multi_mav_manager/FormationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Formation-request>)))
  "Returns md5sum for a message object of type '<Formation-request>"
  "906f4ece79b3c9d0d3067fa07f7fd334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Formation-request)))
  "Returns md5sum for a message object of type 'Formation-request"
  "906f4ece79b3c9d0d3067fa07f7fd334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Formation-request>)))
  "Returns full string definition for message of type '<Formation-request>"
  (cl:format cl:nil "string[] param_names~%float32[] param_vals~%float32 roll~%float32 pitch~%float32 yaw~%float32 spacing~%float32[3] center~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Formation-request)))
  "Returns full string definition for message of type 'Formation-request"
  (cl:format cl:nil "string[] param_names~%float32[] param_vals~%float32 roll~%float32 pitch~%float32 yaw~%float32 spacing~%float32[3] center~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Formation-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'param_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'param_vals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'center) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Formation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Formation-request
    (cl:cons ':param_names (param_names msg))
    (cl:cons ':param_vals (param_vals msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':spacing (spacing msg))
    (cl:cons ':center (center msg))
))
;//! \htmlinclude Formation-response.msg.html

(cl:defclass <Formation-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Formation-response (<Formation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Formation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Formation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multi_mav_manager-srv:<Formation-response> is deprecated: use multi_mav_manager-srv:Formation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Formation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:success-val is deprecated.  Use multi_mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Formation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multi_mav_manager-srv:message-val is deprecated.  Use multi_mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Formation-response>) ostream)
  "Serializes a message object of type '<Formation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Formation-response>) istream)
  "Deserializes a message object of type '<Formation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Formation-response>)))
  "Returns string type for a service object of type '<Formation-response>"
  "multi_mav_manager/FormationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Formation-response)))
  "Returns string type for a service object of type 'Formation-response"
  "multi_mav_manager/FormationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Formation-response>)))
  "Returns md5sum for a message object of type '<Formation-response>"
  "906f4ece79b3c9d0d3067fa07f7fd334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Formation-response)))
  "Returns md5sum for a message object of type 'Formation-response"
  "906f4ece79b3c9d0d3067fa07f7fd334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Formation-response>)))
  "Returns full string definition for message of type '<Formation-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Formation-response)))
  "Returns full string definition for message of type 'Formation-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Formation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Formation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Formation-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Formation)))
  'Formation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Formation)))
  'Formation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Formation)))
  "Returns string type for a service object of type '<Formation>"
  "multi_mav_manager/Formation")