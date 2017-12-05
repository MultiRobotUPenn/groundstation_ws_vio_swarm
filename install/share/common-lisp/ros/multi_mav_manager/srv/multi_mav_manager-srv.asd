
(cl:in-package :asdf)

(defsystem "multi_mav_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :quadrotor_msgs-msg
)
  :components ((:file "_package")
    (:file "Formation" :depends-on ("_package_Formation"))
    (:file "_package_Formation" :depends-on ("_package"))
    (:file "RawPosFormation" :depends-on ("_package_RawPosFormation"))
    (:file "_package_RawPosFormation" :depends-on ("_package"))
  ))