;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_fake::WheelMsg)
  (if (not (find-package "TURTLEBOT3_FAKE"))
    (make-package "TURTLEBOT3_FAKE"))
  (shadow 'WheelMsg (find-package "TURTLEBOT3_FAKE")))
(unless (find-package "TURTLEBOT3_FAKE::WHEELMSG")
  (make-package "TURTLEBOT3_FAKE::WHEELMSG"))

(in-package "ROS")
;;//! \htmlinclude WheelMsg.msg.html


(defclass turtlebot3_fake::WheelMsg
  :super ros::object
  :slots (_left_wheel _right_wheel ))

(defmethod turtlebot3_fake::WheelMsg
  (:init
   (&key
    ((:left_wheel __left_wheel) 0.0)
    ((:right_wheel __right_wheel) 0.0)
    )
   (send-super :init)
   (setq _left_wheel (float __left_wheel))
   (setq _right_wheel (float __right_wheel))
   self)
  (:left_wheel
   (&optional __left_wheel)
   (if __left_wheel (setq _left_wheel __left_wheel)) _left_wheel)
  (:right_wheel
   (&optional __right_wheel)
   (if __right_wheel (setq _right_wheel __right_wheel)) _right_wheel)
  (:serialization-length
   ()
   (+
    ;; float32 _left_wheel
    4
    ;; float32 _right_wheel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_wheel
       (sys::poke _left_wheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_wheel
       (sys::poke _right_wheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_wheel
     (setq _left_wheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_wheel
     (setq _right_wheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot3_fake::WheelMsg :md5sum-) "7e1e4b5f30cf3510f25ed759aee442db")
(setf (get turtlebot3_fake::WheelMsg :datatype-) "turtlebot3_fake/WheelMsg")
(setf (get turtlebot3_fake::WheelMsg :definition-)
      "float32 left_wheel
float32 right_wheel

")



(provide :turtlebot3_fake/WheelMsg "7e1e4b5f30cf3510f25ed759aee442db")


