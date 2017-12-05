
(cl:in-package :asdf)

(defsystem "mav_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalTimed" :depends-on ("_package_GoalTimed"))
    (:file "_package_GoalTimed" :depends-on ("_package"))
    (:file "Vec4" :depends-on ("_package_Vec4"))
    (:file "_package_Vec4" :depends-on ("_package"))
  ))