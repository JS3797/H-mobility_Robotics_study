;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_path_tracker::LocalPathPoints)
  (if (not (find-package "TURTLEBOT_PATH_TRACKER"))
    (make-package "TURTLEBOT_PATH_TRACKER"))
  (shadow 'LocalPathPoints (find-package "TURTLEBOT_PATH_TRACKER")))
(unless (find-package "TURTLEBOT_PATH_TRACKER::LOCALPATHPOINTS")
  (make-package "TURTLEBOT_PATH_TRACKER::LOCALPATHPOINTS"))

(in-package "ROS")
;;//! \htmlinclude LocalPathPoints.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass turtlebot_path_tracker::LocalPathPoints
  :super ros::object
  :slots (_path_points ))

(defmethod turtlebot_path_tracker::LocalPathPoints
  (:init
   (&key
    ((:path_points __path_points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _path_points __path_points)
   self)
  (:path_points
   (&rest __path_points)
   (if (keywordp (car __path_points))
       (send* _path_points __path_points)
     (progn
       (if __path_points (setq _path_points (car __path_points)))
       _path_points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get turtlebot_path_tracker::LocalPathPoints :md5sum-) "c49f35e03746a5cd41f281d3045c92c2")
(setf (get turtlebot_path_tracker::LocalPathPoints :datatype-) "turtlebot_path_tracker/LocalPathPoints")
(setf (get turtlebot_path_tracker::LocalPathPoints :definition-)
      "geometry_msgs/Point[] path_points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :turtlebot_path_tracker/LocalPathPoints "c49f35e03746a5cd41f281d3045c92c2")


