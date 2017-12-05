;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::LineTrackerGoalTimed)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'LineTrackerGoalTimed (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::LINETRACKERGOALTIMED")
  (make-package "QUADROTOR_MSGS::LINETRACKERGOALTIMED"))

(in-package "ROS")
;;//! \htmlinclude LineTrackerGoalTimed.msg.html


(defclass quadrotor_msgs::LineTrackerGoalTimed
  :super ros::object
  :slots (_x _y _z _yaw _v_des _a_des _t_start _duration _relative ))

(defmethod quadrotor_msgs::LineTrackerGoalTimed
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:v_des __v_des) 0.0)
    ((:a_des __a_des) 0.0)
    ((:t_start __t_start) (instance ros::time :init))
    ((:duration __duration) (instance ros::time :init))
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   (setq _v_des (float __v_des))
   (setq _a_des (float __a_des))
   (setq _t_start __t_start)
   (setq _duration __duration)
   (setq _relative __relative)
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
  (:v_des
   (&optional __v_des)
   (if __v_des (setq _v_des __v_des)) _v_des)
  (:a_des
   (&optional __a_des)
   (if __a_des (setq _a_des __a_des)) _a_des)
  (:t_start
   (&optional __t_start)
   (if __t_start (setq _t_start __t_start)) _t_start)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _yaw
    8
    ;; float64 _v_des
    8
    ;; float64 _a_des
    8
    ;; time _t_start
    8
    ;; duration _duration
    8
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_des
       (sys::poke _v_des (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_des
       (sys::poke _a_des (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _t_start
       (write-long (send _t_start :sec) s) (write-long (send _t_start :nsec) s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_des
     (setq _v_des (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_des
     (setq _a_des (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _t_start
     (send _t_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get quadrotor_msgs::LineTrackerGoalTimed :md5sum-) "e1504728e81f012ec0f7868b86b62cb8")
(setf (get quadrotor_msgs::LineTrackerGoalTimed :datatype-) "quadrotor_msgs/LineTrackerGoalTimed")
(setf (get quadrotor_msgs::LineTrackerGoalTimed :definition-)
      "float64 x
float64 y
float64 z
float64 yaw
float64 v_des
float64 a_des
time t_start
duration duration
bool relative

")



(provide :quadrotor_msgs/LineTrackerGoalTimed "e1504728e81f012ec0f7868b86b62cb8")


