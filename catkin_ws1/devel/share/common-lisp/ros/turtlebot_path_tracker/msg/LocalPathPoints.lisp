; Auto-generated. Do not edit!


(cl:in-package turtlebot_path_tracker-msg)


;//! \htmlinclude LocalPathPoints.msg.html

(cl:defclass <LocalPathPoints> (roslisp-msg-protocol:ros-message)
  ((path_points
    :reader path_points
    :initarg :path_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass LocalPathPoints (<LocalPathPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPathPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPathPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_path_tracker-msg:<LocalPathPoints> is deprecated: use turtlebot_path_tracker-msg:LocalPathPoints instead.")))

(cl:ensure-generic-function 'path_points-val :lambda-list '(m))
(cl:defmethod path_points-val ((m <LocalPathPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_path_tracker-msg:path_points-val is deprecated.  Use turtlebot_path_tracker-msg:path_points instead.")
  (path_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPathPoints>) ostream)
  "Serializes a message object of type '<LocalPathPoints>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPathPoints>) istream)
  "Deserializes a message object of type '<LocalPathPoints>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPathPoints>)))
  "Returns string type for a message object of type '<LocalPathPoints>"
  "turtlebot_path_tracker/LocalPathPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPathPoints)))
  "Returns string type for a message object of type 'LocalPathPoints"
  "turtlebot_path_tracker/LocalPathPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPathPoints>)))
  "Returns md5sum for a message object of type '<LocalPathPoints>"
  "c49f35e03746a5cd41f281d3045c92c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPathPoints)))
  "Returns md5sum for a message object of type 'LocalPathPoints"
  "c49f35e03746a5cd41f281d3045c92c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPathPoints>)))
  "Returns full string definition for message of type '<LocalPathPoints>"
  (cl:format cl:nil "geometry_msgs/Point[] path_points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPathPoints)))
  "Returns full string definition for message of type 'LocalPathPoints"
  (cl:format cl:nil "geometry_msgs/Point[] path_points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPathPoints>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPathPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPathPoints
    (cl:cons ':path_points (path_points msg))
))
