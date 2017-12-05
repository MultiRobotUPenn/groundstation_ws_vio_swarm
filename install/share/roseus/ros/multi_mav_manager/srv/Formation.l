;; Auto-generated. Do not edit!


(when (boundp 'multi_mav_manager::Formation)
  (if (not (find-package "MULTI_MAV_MANAGER"))
    (make-package "MULTI_MAV_MANAGER"))
  (shadow 'Formation (find-package "MULTI_MAV_MANAGER")))
(unless (find-package "MULTI_MAV_MANAGER::FORMATION")
  (make-package "MULTI_MAV_MANAGER::FORMATION"))
(unless (find-package "MULTI_MAV_MANAGER::FORMATIONREQUEST")
  (make-package "MULTI_MAV_MANAGER::FORMATIONREQUEST"))
(unless (find-package "MULTI_MAV_MANAGER::FORMATIONRESPONSE")
  (make-package "MULTI_MAV_MANAGER::FORMATIONRESPONSE"))

(in-package "ROS")





(defclass multi_mav_manager::FormationRequest
  :super ros::object
  :slots (_param_names _param_vals _roll _pitch _yaw _spacing _center ))

(defmethod multi_mav_manager::FormationRequest
  (:init
   (&key
    ((:param_names __param_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:param_vals __param_vals) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:spacing __spacing) 0.0)
    ((:center __center) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _param_names __param_names)
   (setq _param_vals __param_vals)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _spacing (float __spacing))
   (setq _center __center)
   self)
  (:param_names
   (&optional __param_names)
   (if __param_names (setq _param_names __param_names)) _param_names)
  (:param_vals
   (&optional __param_vals)
   (if __param_vals (setq _param_vals __param_vals)) _param_vals)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:spacing
   (&optional __spacing)
   (if __spacing (setq _spacing __spacing)) _spacing)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:serialization-length
   ()
   (+
    ;; string[] _param_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _param_names)) 4
    ;; float32[] _param_vals
    (* 4    (length _param_vals)) 4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _spacing
    4
    ;; float32[3] _center
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _param_names
     (write-long (length _param_names) s)
     (dolist (elem _param_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _param_vals
     (write-long (length _param_vals) s)
     (dotimes (i (length _param_vals))
       (sys::poke (elt _param_vals i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _spacing
       (sys::poke _spacing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _center
     (dotimes (i 3)
       (sys::poke (elt _center i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _param_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _param_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _param_vals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param_vals (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _param_vals i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _spacing
     (setq _spacing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _center
   (dotimes (i (length _center))
     (setf (elt _center i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass multi_mav_manager::FormationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod multi_mav_manager::FormationResponse
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

(defclass multi_mav_manager::Formation
  :super ros::object
  :slots ())

(setf (get multi_mav_manager::Formation :md5sum-) "906f4ece79b3c9d0d3067fa07f7fd334")
(setf (get multi_mav_manager::Formation :datatype-) "multi_mav_manager/Formation")
(setf (get multi_mav_manager::Formation :request) multi_mav_manager::FormationRequest)
(setf (get multi_mav_manager::Formation :response) multi_mav_manager::FormationResponse)

(defmethod multi_mav_manager::FormationRequest
  (:response () (instance multi_mav_manager::FormationResponse :init)))

(setf (get multi_mav_manager::FormationRequest :md5sum-) "906f4ece79b3c9d0d3067fa07f7fd334")
(setf (get multi_mav_manager::FormationRequest :datatype-) "multi_mav_manager/FormationRequest")
(setf (get multi_mav_manager::FormationRequest :definition-)
      "string[] param_names
float32[] param_vals
float32 roll
float32 pitch
float32 yaw
float32 spacing
float32[3] center
---
bool success
string message

")

(setf (get multi_mav_manager::FormationResponse :md5sum-) "906f4ece79b3c9d0d3067fa07f7fd334")
(setf (get multi_mav_manager::FormationResponse :datatype-) "multi_mav_manager/FormationResponse")
(setf (get multi_mav_manager::FormationResponse :definition-)
      "string[] param_names
float32[] param_vals
float32 roll
float32 pitch
float32 yaw
float32 spacing
float32[3] center
---
bool success
string message

")



(provide :multi_mav_manager/Formation "906f4ece79b3c9d0d3067fa07f7fd334")


