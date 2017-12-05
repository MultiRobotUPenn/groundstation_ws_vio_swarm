;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::TrackerStatus)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'TrackerStatus (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::TRACKERSTATUS")
  (make-package "QUADROTOR_MSGS::TRACKERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TrackerStatus.msg.html


(intern "*ACTIVE*" (find-package "QUADROTOR_MSGS::TRACKERSTATUS"))
(shadow '*ACTIVE* (find-package "QUADROTOR_MSGS::TRACKERSTATUS"))
(defconstant quadrotor_msgs::TrackerStatus::*ACTIVE* 0)
(intern "*SUCCEEDED*" (find-package "QUADROTOR_MSGS::TRACKERSTATUS"))
(shadow '*SUCCEEDED* (find-package "QUADROTOR_MSGS::TRACKERSTATUS"))
(defconstant quadrotor_msgs::TrackerStatus::*SUCCEEDED* 1)
(defclass quadrotor_msgs::TrackerStatus
  :super ros::object
  :slots (_stamp _tracker _status ))

(defmethod quadrotor_msgs::TrackerStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:tracker __tracker) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _tracker (string __tracker))
   (setq _status (round __status))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:tracker
   (&optional __tracker)
   (if __tracker (setq _tracker __tracker)) _tracker)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _tracker
    4 (length _tracker)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _tracker
       (write-long (length _tracker) s) (princ _tracker s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _tracker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get quadrotor_msgs::TrackerStatus :md5sum-) "a7faf35bec75678eba6ebc513e053b6b")
(setf (get quadrotor_msgs::TrackerStatus :datatype-) "quadrotor_msgs/TrackerStatus")
(setf (get quadrotor_msgs::TrackerStatus :definition-)
      "time stamp
string tracker
uint8 status

# Options for the status
uint8 ACTIVE    = 0             # Currently active
uint8 SUCCEEDED = 1             # The tracker has finished

")



(provide :quadrotor_msgs/TrackerStatus "a7faf35bec75678eba6ebc513e053b6b")


