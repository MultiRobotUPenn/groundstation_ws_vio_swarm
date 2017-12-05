;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::FlatOutputs)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'FlatOutputs (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::FLATOUTPUTS")
  (make-package "QUADROTOR_MSGS::FLATOUTPUTS"))

(in-package "ROS")
;;//! \htmlinclude FlatOutputs.msg.html


(defclass quadrotor_msgs::FlatOutputs
  :super ros::object
  :slots (_x _y _z _yaw ))

(defmethod quadrotor_msgs::FlatOutputs
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quadrotor_msgs::FlatOutputs :md5sum-) "b81376c2774ff4f956e5110e01c9db26")
(setf (get quadrotor_msgs::FlatOutputs :datatype-) "quadrotor_msgs/FlatOutputs")
(setf (get quadrotor_msgs::FlatOutputs :definition-)
      "float32 x
float32 y
float32 z
float32 yaw

")



(provide :quadrotor_msgs/FlatOutputs "b81376c2774ff4f956e5110e01c9db26")


