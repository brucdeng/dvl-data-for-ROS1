;; Auto-generated. Do not edit!


(when (boundp 'waterlinked_a50_ros_driver::DVLBeam)
  (if (not (find-package "WATERLINKED_A50_ROS_DRIVER"))
    (make-package "WATERLINKED_A50_ROS_DRIVER"))
  (shadow 'DVLBeam (find-package "WATERLINKED_A50_ROS_DRIVER")))
(unless (find-package "WATERLINKED_A50_ROS_DRIVER::DVLBEAM")
  (make-package "WATERLINKED_A50_ROS_DRIVER::DVLBEAM"))

(in-package "ROS")
;;//! \htmlinclude DVLBeam.msg.html


(defclass waterlinked_a50_ros_driver::DVLBeam
  :super ros::object
  :slots (_id _velocity _distance _rssi _nsd _valid ))

(defmethod waterlinked_a50_ros_driver::DVLBeam
  (:init
   (&key
    ((:id __id) 0)
    ((:velocity __velocity) 0.0)
    ((:distance __distance) 0.0)
    ((:rssi __rssi) 0.0)
    ((:nsd __nsd) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _velocity (float __velocity))
   (setq _distance (float __distance))
   (setq _rssi (float __rssi))
   (setq _nsd (float __nsd))
   (setq _valid __valid)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:nsd
   (&optional __nsd)
   (if __nsd (setq _nsd __nsd)) _nsd)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; float64 _velocity
    8
    ;; float64 _distance
    8
    ;; float64 _rssi
    8
    ;; float64 _nsd
    8
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rssi
       (sys::poke _rssi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nsd
       (sys::poke _nsd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rssi
     (setq _rssi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nsd
     (setq _nsd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get waterlinked_a50_ros_driver::DVLBeam :md5sum-) "750bcc69eae0dec5dc80e15e3ced915b")
(setf (get waterlinked_a50_ros_driver::DVLBeam :datatype-) "waterlinked_a50_ros_driver/DVLBeam")
(setf (get waterlinked_a50_ros_driver::DVLBeam :definition-)
      "#Transducer ID
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



(provide :waterlinked_a50_ros_driver/DVLBeam "750bcc69eae0dec5dc80e15e3ced915b")


