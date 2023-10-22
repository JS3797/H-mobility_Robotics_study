
(cl:in-package :asdf)

(defsystem "turtlebot3_fake-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WheelMsg" :depends-on ("_package_WheelMsg"))
    (:file "_package_WheelMsg" :depends-on ("_package"))
  ))