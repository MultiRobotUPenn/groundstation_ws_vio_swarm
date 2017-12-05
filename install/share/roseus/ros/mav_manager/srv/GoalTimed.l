;; Auto-generated. Do not edit!


(when (boundp 'mav_manager::GoalTimed)
  (if (not (find-package "MAV_MANAGER"))
    (make-package "MAV_MANAGER"))
  (shadow 'GoalTimed (find-package "MAV_MANAGER")))
(unless (find-package "MAV_MANAGER::GOALTIMED")
  (make-package "MAV_MANAGER::GOALTIMED"))
(unless (find-package "MAV_MANAGER::GOALTIMEDREQUEST")
  (make-package "MAV_MANAGER::GOALTIMEDREQUEST"))
(unless (find-package "MAV_MANAGER::GOALTIMEDRESPONSE")
  (make-package "MAV_MANAGER::GOALTIMEDRESPONSE"))

(in-package "ROS")





(defclass mav_manager::GoalTimedRequest
  :super ros::object
  :slots (_goal _duration _t_start ))

(defmethod mav_manager::GoalTimedRequest
  (:init
   (&key
    ((:goal __goal) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:duration __duration) (instance ros::time :init))
    ((:t_start __t_start) (instance ros::time :init))
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _duration __duration)
   (setq _t_start __t_start)
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:t_start
   (&optional __t_start)
   (if __t_start (setq _t_start __t_start)) _t_start)
  (:serialization-length
   ()
   (+
    ;; float32[4] _goal
    (* 4    4)
    ;; duration _duration
    8
    ;; time _t_start
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _goal
     (dotimes (i 4)
       (sys::poke (elt _goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;; time _t_start
       (write-long (send _t_start :sec) s) (write-long (send _t_start :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _goal
   (dotimes (i (length _goal))
     (setf (elt _goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _t_start
     (send _t_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mav_manager::GoalTimedResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mav_manager::GoalTimedResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mav_manager::GoalTimed
  :super ros::object
  :slots ())

(setf (get mav_manager::GoalTimed :md5sum-) "3200a97d30222d1d03961acacb87f306")
(setf (get mav_manager::GoalTimed :datatype-) "mav_manager/GoalTimed")
(setf (get mav_manager::GoalTimed :request) mav_manager::GoalTimedRequest)
(setf (get mav_manager::GoalTimed :response) mav_manager::GoalTimedResponse)

(defmethod mav_manager::GoalTimedRequest
  (:response () (instance mav_manager::GoalTimedResponse :init)))

(setf (get mav_manager::GoalTimedRequest :md5sum-) "3200a97d30222d1d03961acacb87f306")
(setf (get mav_manager::GoalTimedRequest :datatype-) "mav_manager/GoalTimedRequest")
(setf (get mav_manager::GoalTimedRequest :definition-)
      "float32[4] goal
duration duration
time t_start
---
bool success
string message

")

(setf (get mav_manager::GoalTimedResponse :md5sum-) "3200a97d30222d1d03961acacb87f306")
(setf (get mav_manager::GoalTimedResponse :datatype-) "mav_manager/GoalTimedResponse")
(setf (get mav_manager::GoalTimedResponse :definition-)
      "float32[4] goal
duration duration
time t_start
---
bool success
string message

")



(provide :mav_manager/GoalTimed "3200a97d30222d1d03961acacb87f306")


