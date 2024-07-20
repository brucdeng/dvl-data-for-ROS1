;; Auto-generated. Do not edit!


(when (boundp 'waterlinked_a50_ros_driver::DVL)
  (if (not (find-package "WATERLINKED_A50_ROS_DRIVER"))
    (make-package "WATERLINKED_A50_ROS_DRIVER"))
  (shadow 'DVL (find-package "WATERLINKED_A50_ROS_DRIVER")))
(unless (find-package "WATERLINKED_A50_ROS_DRIVER::DVL")
  (make-package "WATERLINKED_A50_ROS_DRIVER::DVL"))

(in-package "ROS")
;;//! \htmlinclude DVL.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass waterlinked_a50_ros_driver::DVL
  :super ros::object
  :slots (_header _time _velocity _fom _altitude _beams _velocity_valid _status _form ))

(defmethod waterlinked_a50_ros_driver::DVL
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:fom __fom) 0.0)
    ((:altitude __altitude) 0.0)
    ((:beams __beams) ())
    ((:velocity_valid __velocity_valid) nil)
    ((:status __status) 0)
    ((:form __form) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _velocity __velocity)
   (setq _fom (float __fom))
   (setq _altitude (float __altitude))
   (setq _beams __beams)
   (setq _velocity_valid __velocity_valid)
   (setq _status (round __status))
   (setq _form (string __form))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:fom
   (&optional __fom)
   (if __fom (setq _fom __fom)) _fom)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:beams
   (&rest __beams)
   (if (keywordp (car __beams))
       (send* _beams __beams)
     (progn
       (if __beams (setq _beams (car __beams)))
       _beams)))
  (:velocity_valid
   (&optional (__velocity_valid :null))
   (if (not (eq __velocity_valid :null)) (setq _velocity_valid __velocity_valid)) _velocity_valid)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:form
   (&optional __form)
   (if __form (setq _form __form)) _form)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64 _fom
    8
    ;; float64 _altitude
    8
    ;; waterlinked_a50_ros_driver/DVLBeam[] _beams
    (apply #'+ (send-all _beams :serialization-length)) 4
    ;; bool _velocity_valid
    1
    ;; int64 _status
    8
    ;; string _form
    4 (length _form)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64 _fom
       (sys::poke _fom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; waterlinked_a50_ros_driver/DVLBeam[] _beams
     (write-long (length _beams) s)
     (dolist (elem _beams)
       (send elem :serialize s)
       )
     ;; bool _velocity_valid
       (if _velocity_valid (write-byte -1 s) (write-byte 0 s))
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;; string _form
       (write-long (length _form) s) (princ _form s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _fom
     (setq _fom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; waterlinked_a50_ros_driver/DVLBeam[] _beams
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beams (let (r) (dotimes (i n) (push (instance waterlinked_a50_ros_driver::DVLBeam :init) r)) r))
     (dolist (elem- _beams)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _velocity_valid
     (setq _velocity_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _form
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _form (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get waterlinked_a50_ros_driver::DVL :md5sum-) "dea1debc1aca7804a62c507714ec3777")
(setf (get waterlinked_a50_ros_driver::DVL :datatype-) "waterlinked_a50_ros_driver/DVL")
(setf (get waterlinked_a50_ros_driver::DVL :definition-)
      "Header header
#Time
float64 time
#Measured velocity [m/s]
geometry_msgs/Vector3 velocity
#Figure of Merit
float64 fom
#Altitude of the sensor
float64 altitude
#Beams/Transducers
DVLBeam[] beams
#Validity of velocity
bool velocity_valid
#Status message
int64 status
#Formatting of json
string form

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: waterlinked_a50_ros_driver/DVLBeam
#Transducer ID
int64 id
#Velocity reported by transducer
float64 velocity
#Distance value
float64 distance
#RSSI
float64 rssi
#NSD
float64 nsd
#Report if beam is locked on and providing reliable data
bool valid

")



(provide :waterlinked_a50_ros_driver/DVL "dea1debc1aca7804a62c507714ec3777")


