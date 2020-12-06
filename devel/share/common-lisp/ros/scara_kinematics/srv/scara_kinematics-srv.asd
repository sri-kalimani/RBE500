
(cl:in-package :asdf)

(defsystem "scara_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Forkin" :depends-on ("_package_Forkin"))
    (:file "_package_Forkin" :depends-on ("_package"))
    (:file "Ivkin" :depends-on ("_package_Ivkin"))
    (:file "_package_Ivkin" :depends-on ("_package"))
    (:file "MoveRobot" :depends-on ("_package_MoveRobot"))
    (:file "_package_MoveRobot" :depends-on ("_package"))
    (:file "MoveRobot_3" :depends-on ("_package_MoveRobot_3"))
    (:file "_package_MoveRobot_3" :depends-on ("_package"))
    (:file "MoveToJoints" :depends-on ("_package_MoveToJoints"))
    (:file "_package_MoveToJoints" :depends-on ("_package"))
    (:file "MoveToPoint" :depends-on ("_package_MoveToPoint"))
    (:file "_package_MoveToPoint" :depends-on ("_package"))
  ))