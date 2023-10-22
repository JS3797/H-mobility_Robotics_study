
(cl:in-package :asdf)

(defsystem "turtlebot_path_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "LocalPathPoints" :depends-on ("_package_LocalPathPoints"))
    (:file "_package_LocalPathPoints" :depends-on ("_package"))
  ))