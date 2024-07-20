
(cl:in-package :asdf)

(defsystem "waterlinked_a50_ros_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DVL" :depends-on ("_package_DVL"))
    (:file "_package_DVL" :depends-on ("_package"))
    (:file "DVLBeam" :depends-on ("_package_DVLBeam"))
    (:file "_package_DVLBeam" :depends-on ("_package"))
  ))