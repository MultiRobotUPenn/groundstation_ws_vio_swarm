; Auto-generated. Do not edit!


(cl:in-package trackers_manager-srv)


;//! \htmlinclude Transition-request.msg.html

(cl:defclass <Transition-request> (roslisp-msg-protocol:ros-message)
  ((tracker
    :reader tracker
    :initarg :tracker
    :type cl:string
    :initform ""))
)

(cl:defclass Transition-request (<Transition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trackers_manager-srv:<Transition-request> is deprecated: use trackers_manager-srv:Transition-request instead.")))

(cl:ensure-generic-function 'tracker-val :lambda-list '(m))
(cl:defmethod tracker-val ((m <Transition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trackers_manager-srv:tracker-val is deprecated.  Use trackers_manager-srv:tracker instead.")
  (tracker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transition-request>) ostream)
  "Serializes a message object of type '<Transition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracker))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transition-request>) istream)
  "Deserializes a message object of type '<Transition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transition-request>)))
  "Returns string type for a service object of type '<Transition-request>"
  "trackers_manager/TransitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition-request)))
  "Returns string type for a service object of type 'Transition-request"
  "trackers_manager/TransitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transition-request>)))
  "Returns md5sum for a message object of type '<Transition-request>"
  "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transition-request)))
  "Returns md5sum for a message object of type 'Transition-request"
  "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transition-request>)))
  "Returns full string definition for message of type '<Transition-request>"
  (cl:format cl:nil "string tracker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transition-request)))
  "Returns full string definition for message of type 'Transition-request"
  (cl:format cl:nil "string tracker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tracker))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Transition-request
    (cl:cons ':tracker (tracker msg))
))
;//! \htmlinclude Transition-response.msg.html

(cl:defclass <Transition-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Transition-response (<Transition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trackers_manager-srv:<Transition-response> is deprecated: use trackers_manager-srv:Transition-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transition-response>) ostream)
  "Serializes a message object of type '<Transition-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transition-response>) istream)
  "Deserializes a message object of type '<Transition-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transition-response>)))
  "Returns string type for a service object of type '<Transition-response>"
  "trackers_manager/TransitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition-response)))
  "Returns string type for a service object of type 'Transition-response"
  "trackers_manager/TransitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transition-response>)))
  "Returns md5sum for a message object of type '<Transition-response>"
  "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transition-response)))
  "Returns md5sum for a message object of type 'Transition-response"
  "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transition-response>)))
  "Returns full string definition for message of type '<Transition-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transition-response)))
  "Returns full string definition for message of type 'Transition-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transition-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Transition-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Transition)))
  'Transition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Transition)))
  'Transition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition)))
  "Returns string type for a service object of type '<Transition>"
  "trackers_manager/Transition")