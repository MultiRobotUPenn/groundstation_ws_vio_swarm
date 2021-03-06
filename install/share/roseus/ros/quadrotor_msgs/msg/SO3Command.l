;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::SO3Command)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'SO3Command (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::SO3COMMAND")
  (make-package "QUADROTOR_MSGS::SO3COMMAND"))

(in-package "ROS")
;;//! \htmlinclude SO3Command.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::SO3Command
  :super ros::object
  :slots (_header _force _orientation _angular_velocity _aux _kR _kOm ))

(defmethod quadrotor_msgs::SO3Command
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:aux __aux) (instance quadrotor_msgs::AuxCommand :init))
    ((:kR __kR) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kOm __kOm) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _force __force)
   (setq _orientation __orientation)
   (setq _angular_velocity __angular_velocity)
   (setq _aux __aux)
   (setq _kR __kR)
   (setq _kOm __kOm)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:aux
   (&rest __aux)
   (if (keywordp (car __aux))
       (send* _aux __aux)
     (progn
       (if __aux (setq _aux (car __aux)))
       _aux)))
  (:kR
   (&optional __kR)
   (if __kR (setq _kR __kR)) _kR)
  (:kOm
   (&optional __kOm)
   (if __kOm (setq _kOm __kOm)) _kOm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; quadrotor_msgs/AuxCommand _aux
    (send _aux :serialization-length)
    ;; float64[3] _kR
    (* 8    3)
    ;; float64[3] _kOm
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; quadrotor_msgs/AuxCommand _aux
       (send _aux :serialize s)
     ;; float64[3] _kR
     (dotimes (i 3)
       (sys::poke (elt _kR i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _kOm
     (dotimes (i 3)
       (sys::poke (elt _kOm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; quadrotor_msgs/AuxCommand _aux
     (send _aux :deserialize buf ptr-) (incf ptr- (send _aux :serialization-length))
   ;; float64[3] _kR
   (dotimes (i (length _kR))
     (setf (elt _kR i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _kOm
   (dotimes (i (length _kOm))
     (setf (elt _kOm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get quadrotor_msgs::SO3Command :md5sum-) "6778903d02fc8f91a4ade288d0a1f3d6")
(setf (get quadrotor_msgs::SO3Command :datatype-) "quadrotor_msgs/SO3Command")
(setf (get quadrotor_msgs::SO3Command :definition-)
      "Header header
geometry_msgs/Vector3 force
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
quadrotor_msgs/AuxCommand aux
float64[3] kR
float64[3] kOm

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: quadrotor_msgs/AuxCommand
float64 current_yaw
float64 kf_correction
float64[2] angle_corrections # Trims for roll, pitch
bool enable_motors
bool use_external_yaw

")



(provide :quadrotor_msgs/SO3Command "6778903d02fc8f91a4ade288d0a1f3d6")


