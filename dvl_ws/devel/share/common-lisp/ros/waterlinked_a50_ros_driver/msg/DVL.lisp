; Auto-generated. Do not edit!


(cl:in-package waterlinked_a50_ros_driver-msg)


;//! \htmlinclude DVL.msg.html

(cl:defclass <DVL> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (fom
    :reader fom
    :initarg :fom
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (beams
    :reader beams
    :initarg :beams
    :type (cl:vector waterlinked_a50_ros_driver-msg:DVLBeam)
   :initform (cl:make-array 0 :element-type 'waterlinked_a50_ros_driver-msg:DVLBeam :initial-element (cl:make-instance 'waterlinked_a50_ros_driver-msg:DVLBeam)))
   (velocity_valid
    :reader velocity_valid
    :initarg :velocity_valid
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (form
    :reader form
    :initarg :form
    :type cl:string
    :initform ""))
)

(cl:defclass DVL (<DVL>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DVL>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DVL)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waterlinked_a50_ros_driver-msg:<DVL> is deprecated: use waterlinked_a50_ros_driver-msg:DVL instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:header-val is deprecated.  Use waterlinked_a50_ros_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:time-val is deprecated.  Use waterlinked_a50_ros_driver-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:velocity-val is deprecated.  Use waterlinked_a50_ros_driver-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'fom-val :lambda-list '(m))
(cl:defmethod fom-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:fom-val is deprecated.  Use waterlinked_a50_ros_driver-msg:fom instead.")
  (fom m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:altitude-val is deprecated.  Use waterlinked_a50_ros_driver-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'beams-val :lambda-list '(m))
(cl:defmethod beams-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:beams-val is deprecated.  Use waterlinked_a50_ros_driver-msg:beams instead.")
  (beams m))

(cl:ensure-generic-function 'velocity_valid-val :lambda-list '(m))
(cl:defmethod velocity_valid-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:velocity_valid-val is deprecated.  Use waterlinked_a50_ros_driver-msg:velocity_valid instead.")
  (velocity_valid m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:status-val is deprecated.  Use waterlinked_a50_ros_driver-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'form-val :lambda-list '(m))
(cl:defmethod form-val ((m <DVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterlinked_a50_ros_driver-msg:form-val is deprecated.  Use waterlinked_a50_ros_driver-msg:form instead.")
  (form m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DVL>) ostream)
  "Serializes a message object of type '<DVL>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beams))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'beams))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'form))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'form))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DVL>) istream)
  "Deserializes a message object of type '<DVL>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beams) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beams)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'waterlinked_a50_ros_driver-msg:DVLBeam))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'velocity_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'form) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'form) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DVL>)))
  "Returns string type for a message object of type '<DVL>"
  "waterlinked_a50_ros_driver/DVL")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DVL)))
  "Returns string type for a message object of type 'DVL"
  "waterlinked_a50_ros_driver/DVL")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DVL>)))
  "Returns md5sum for a message object of type '<DVL>"
  "dea1debc1aca7804a62c507714ec3777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DVL)))
  "Returns md5sum for a message object of type 'DVL"
  "dea1debc1aca7804a62c507714ec3777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DVL>)))
  "Returns full string definition for message of type '<DVL>"
  (cl:format cl:nil "Header header~%#Time~%float64 time~%#Measured velocity [m/s]~%geometry_msgs/Vector3 velocity~%#Figure of Merit~%float64 fom~%#Altitude of the sensor~%float64 altitude~%#Beams/Transducers~%DVLBeam[] beams~%#Validity of velocity~%bool velocity_valid~%#Status message~%int64 status~%#Formatting of json~%string form~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waterlinked_a50_ros_driver/DVLBeam~%#Transducer ID~%int64 id~%#Velocity reported by transducer~%float64 velocity~%#Distance value~%float64 distance~%#RSSI~%float64 rssi~%#NSD~%float64 nsd~%#Report if beam is locked on and providing reliable data~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DVL)))
  "Returns full string definition for message of type 'DVL"
  (cl:format cl:nil "Header header~%#Time~%float64 time~%#Measured velocity [m/s]~%geometry_msgs/Vector3 velocity~%#Figure of Merit~%float64 fom~%#Altitude of the sensor~%float64 altitude~%#Beams/Transducers~%DVLBeam[] beams~%#Validity of velocity~%bool velocity_valid~%#Status message~%int64 status~%#Formatting of json~%string form~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waterlinked_a50_ros_driver/DVLBeam~%#Transducer ID~%int64 id~%#Velocity reported by transducer~%float64 velocity~%#Distance value~%float64 distance~%#RSSI~%float64 rssi~%#NSD~%float64 nsd~%#Report if beam is locked on and providing reliable data~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DVL>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beams) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     4 (cl:length (cl:slot-value msg 'form))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DVL>))
  "Converts a ROS message object to a list"
  (cl:list 'DVL
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':fom (fom msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':beams (beams msg))
    (cl:cons ':velocity_valid (velocity_valid msg))
    (cl:cons ':status (status msg))
    (cl:cons ':form (form msg))
))
