;; Auto-generated. Do not edit!


(when (boundp 'trackers_manager::Transition)
  (if (not (find-package "TRACKERS_MANAGER"))
    (make-package "TRACKERS_MANAGER"))
  (shadow 'Transition (find-package "TRACKERS_MANAGER")))
(unless (find-package "TRACKERS_MANAGER::TRANSITION")
  (make-package "TRACKERS_MANAGER::TRANSITION"))
(unless (find-package "TRACKERS_MANAGER::TRANSITIONREQUEST")
  (make-package "TRACKERS_MANAGER::TRANSITIONREQUEST"))
(unless (find-package "TRACKERS_MANAGER::TRANSITIONRESPONSE")
  (make-package "TRACKERS_MANAGER::TRANSITIONRESPONSE"))

(in-package "ROS")





(defclass trackers_manager::TransitionRequest
  :super ros::object
  :slots (_tracker ))

(defmethod trackers_manager::TransitionRequest
  (:init
   (&key
    ((:tracker __tracker) "")
    )
   (send-super :init)
   (setq _tracker (string __tracker))
   self)
  (:tracker
   (&optional __tracker)
   (if __tracker (setq _tracker __tracker)) _tracker)
  (:serialization-length
   ()
   (+
    ;; string _tracker
    4 (length _tracker)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tracker
       (write-long (length _tracker) s) (princ _tracker s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tracker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass trackers_manager::TransitionResponse
  :super ros::object
  :slots ())

(defmethod trackers_manager::TransitionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass trackers_manager::Transition
  :super ros::object
  :slots ())

(setf (get trackers_manager::Transition :md5sum-) "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(setf (get trackers_manager::Transition :datatype-) "trackers_manager/Transition")
(setf (get trackers_manager::Transition :request) trackers_manager::TransitionRequest)
(setf (get trackers_manager::Transition :response) trackers_manager::TransitionResponse)

(defmethod trackers_manager::TransitionRequest
  (:response () (instance trackers_manager::TransitionResponse :init)))

(setf (get trackers_manager::TransitionRequest :md5sum-) "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(setf (get trackers_manager::TransitionRequest :datatype-) "trackers_manager/TransitionRequest")
(setf (get trackers_manager::TransitionRequest :definition-)
      "string tracker
---


")

(setf (get trackers_manager::TransitionResponse :md5sum-) "3ed2ea9cfbf7aece5bb9c39adf1f02b7")
(setf (get trackers_manager::TransitionResponse :datatype-) "trackers_manager/TransitionResponse")
(setf (get trackers_manager::TransitionResponse :definition-)
      "string tracker
---


")



(provide :trackers_manager/Transition "3ed2ea9cfbf7aece5bb9c39adf1f02b7")


