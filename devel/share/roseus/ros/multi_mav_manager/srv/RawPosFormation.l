;; Auto-generated. Do not edit!


(when (boundp 'multi_mav_manager::RawPosFormation)
  (if (not (find-package "MULTI_MAV_MANAGER"))
    (make-package "MULTI_MAV_MANAGER"))
  (shadow 'RawPosFormation (find-package "MULTI_MAV_MANAGER")))
(unless (find-package "MULTI_MAV_MANAGER::RAWPOSFORMATION")
  (make-package "MULTI_MAV_MANAGER::RAWPOSFORMATION"))
(unless (find-package "MULTI_MAV_MANAGER::RAWPOSFORMATIONREQUEST")
  (make-package "MULTI_MAV_MANAGER::RAWPOSFORMATIONREQUEST"))
(unless (find-package "MULTI_MAV_MANAGER::RAWPOSFORMATIONRESPONSE")
  (make-package "MULTI_MAV_MANAGER::RAWPOSFORMATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "QUADROTOR_MSGS"))
  (ros::roseus-add-msgs "quadrotor_msgs"))




(defclass multi_mav_manager::RawPosFormationRequest
  :super ros::object
  :slots (_goals ))

(defmethod multi_mav_manager::RawPosFormationRequest
  (:init
   (&key
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance quadrotor_msgs::FlatOutputs :init) r)) r))
    )
   (send-super :init)
   (setq _goals __goals)
   self)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; quadrotor_msgs/FlatOutputs[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; quadrotor_msgs/FlatOutputs[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; quadrotor_msgs/FlatOutputs[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance quadrotor_msgs::FlatOutputs :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass multi_mav_manager::RawPosFormationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod multi_mav_manager::RawPosFormationResponse
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

(defclass multi_mav_manager::RawPosFormation
  :super ros::object
  :slots ())

(setf (get multi_mav_manager::RawPosFormation :md5sum-) "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(setf (get multi_mav_manager::RawPosFormation :datatype-) "multi_mav_manager/RawPosFormation")
(setf (get multi_mav_manager::RawPosFormation :request) multi_mav_manager::RawPosFormationRequest)
(setf (get multi_mav_manager::RawPosFormation :response) multi_mav_manager::RawPosFormationResponse)

(defmethod multi_mav_manager::RawPosFormationRequest
  (:response () (instance multi_mav_manager::RawPosFormationResponse :init)))

(setf (get multi_mav_manager::RawPosFormationRequest :md5sum-) "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(setf (get multi_mav_manager::RawPosFormationRequest :datatype-) "multi_mav_manager/RawPosFormationRequest")
(setf (get multi_mav_manager::RawPosFormationRequest :definition-)
      "quadrotor_msgs/FlatOutputs[] goals

================================================================================
MSG: quadrotor_msgs/FlatOutputs
float32 x
float32 y
float32 z
float32 yaw
---
bool success
string message

")

(setf (get multi_mav_manager::RawPosFormationResponse :md5sum-) "4fedc5f0f5ef4fa43b290be6cfe0b1a7")
(setf (get multi_mav_manager::RawPosFormationResponse :datatype-) "multi_mav_manager/RawPosFormationResponse")
(setf (get multi_mav_manager::RawPosFormationResponse :definition-)
      "quadrotor_msgs/FlatOutputs[] goals

================================================================================
MSG: quadrotor_msgs/FlatOutputs
float32 x
float32 y
float32 z
float32 yaw
---
bool success
string message

")



(provide :multi_mav_manager/RawPosFormation "4fedc5f0f5ef4fa43b290be6cfe0b1a7")


