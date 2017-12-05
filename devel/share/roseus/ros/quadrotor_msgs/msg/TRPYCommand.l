;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::TRPYCommand)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'TRPYCommand (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::TRPYCOMMAND")
  (make-package "QUADROTOR_MSGS::TRPYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TRPYCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::TRPYCommand
  :super ros::object
  :slots (_header _thrust _roll _pitch _yaw _angular_velocity _kR _kOm _aux ))

(defmethod quadrotor_msgs::TRPYCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:thrust __thrust) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:kR __kR) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kOm __kOm) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:aux __aux) (instance quadrotor_msgs::AuxCommand :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _thrust (float __thrust))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _angular_velocity __angular_velocity)
   (setq _kR __kR)
   (setq _kOm __kOm)
   (setq _aux __aux)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:kR
   (&optional __kR)
   (if __kR (setq _kR __kR)) _kR)
  (:kOm
   (&optional __kOm)
   (if __kOm (setq _kOm __kOm)) _kOm)
  (:aux
   (&rest __aux)
   (if (keywordp (car __aux))
       (send* _aux __aux)
     (progn
       (if __aux (setq _aux (car __aux)))
       _aux)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _thrust
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64[3] _kR
    (* 8    3)
    ;; float64[3] _kOm
    (* 8    3)
    ;; quadrotor_msgs/AuxCommand _aux
    (send _aux :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64[3] _kR
     (dotimes (i 3)
       (sys::poke (elt _kR i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _kOm
     (dotimes (i 3)
       (sys::poke (elt _kOm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; quadrotor_msgs/AuxCommand _aux
       (send _aux :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64[3] _kR
   (dotimes (i (length _kR))
     (setf (elt _kR i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _kOm
   (dotimes (i (length _kOm))
     (setf (elt _kOm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; quadrotor_msgs/AuxCommand _aux
     (send _aux :deserialize buf ptr-) (incf ptr- (send _aux :serialization-length))
   ;;
   self)
  )

(setf (get quadrotor_msgs::TRPYCommand :md5sum-) "f80239b313b23c6da7a6269aae03beb6")
(setf (get quadrotor_msgs::TRPYCommand :datatype-) "quadrotor_msgs/TRPYCommand")
(setf (get quadrotor_msgs::TRPYCommand :definition-)
      "Header header
float64 thrust
float64 roll
float64 pitch
float64 yaw
geometry_msgs/Vector3 angular_velocity
float64[3] kR
float64[3] kOm
quadrotor_msgs/AuxCommand aux

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: quadrotor_msgs/AuxCommand
float64 current_yaw
float64 kf_correction
float64[2] angle_corrections # Trims for roll, pitch
bool enable_motors
bool use_external_yaw

")



(provide :quadrotor_msgs/TRPYCommand "f80239b313b23c6da7a6269aae03beb6")


