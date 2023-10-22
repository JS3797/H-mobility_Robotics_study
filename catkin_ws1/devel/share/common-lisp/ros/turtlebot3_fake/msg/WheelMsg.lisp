; Auto-generated. Do not edit!


(cl:in-package turtlebot3_fake-msg)


;//! \htmlinclude WheelMsg.msg.html

(cl:defclass <WheelMsg> (roslisp-msg-protocol:ros-message)
  ((left_wheel
    :reader left_wheel
    :initarg :left_wheel
    :type cl:float
    :initform 0.0)
   (right_wheel
    :reader right_wheel
    :initarg :right_wheel
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelMsg (<WheelMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_fake-msg:<WheelMsg> is deprecated: use turtlebot3_fake-msg:WheelMsg instead.")))

(cl:ensure-generic-function 'left_wheel-val :lambda-list '(m))
(cl:defmethod left_wheel-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_fake-msg:left_wheel-val is deprecated.  Use turtlebot3_fake-msg:left_wheel instead.")
  (left_wheel m))

(cl:ensure-generic-function 'right_wheel-val :lambda-list '(m))
(cl:defmethod right_wheel-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_fake-msg:right_wheel-val is deprecated.  Use turtlebot3_fake-msg:right_wheel instead.")
  (right_wheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelMsg>) ostream)
  "Serializes a message object of type '<WheelMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelMsg>) istream)
  "Deserializes a message object of type '<WheelMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_wheel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_wheel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelMsg>)))
  "Returns string type for a message object of type '<WheelMsg>"
  "turtlebot3_fake/WheelMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelMsg)))
  "Returns string type for a message object of type 'WheelMsg"
  "turtlebot3_fake/WheelMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelMsg>)))
  "Returns md5sum for a message object of type '<WheelMsg>"
  "7e1e4b5f30cf3510f25ed759aee442db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelMsg)))
  "Returns md5sum for a message object of type 'WheelMsg"
  "7e1e4b5f30cf3510f25ed759aee442db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelMsg>)))
  "Returns full string definition for message of type '<WheelMsg>"
  (cl:format cl:nil "float32 left_wheel~%float32 right_wheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelMsg)))
  "Returns full string definition for message of type 'WheelMsg"
  (cl:format cl:nil "float32 left_wheel~%float32 right_wheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelMsg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelMsg
    (cl:cons ':left_wheel (left_wheel msg))
    (cl:cons ':right_wheel (right_wheel msg))
))
