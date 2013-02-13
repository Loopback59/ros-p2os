; Auto-generated. Do not edit!


(cl:in-package p2os_driver-msg)


;//! \htmlinclude SonarState.msg.html

(cl:defclass <SonarState> (roslisp-msg-protocol:ros-message)
  ((array_power
    :reader array_power
    :initarg :array_power
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SonarState (<SonarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_driver-msg:<SonarState> is deprecated: use p2os_driver-msg:SonarState instead.")))

(cl:ensure-generic-function 'array_power-val :lambda-list '(m))
(cl:defmethod array_power-val ((m <SonarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_driver-msg:array_power-val is deprecated.  Use p2os_driver-msg:array_power instead.")
  (array_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarState>) ostream)
  "Serializes a message object of type '<SonarState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'array_power) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarState>) istream)
  "Deserializes a message object of type '<SonarState>"
    (cl:setf (cl:slot-value msg 'array_power) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarState>)))
  "Returns string type for a message object of type '<SonarState>"
  "p2os_driver/SonarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarState)))
  "Returns string type for a message object of type 'SonarState"
  "p2os_driver/SonarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarState>)))
  "Returns md5sum for a message object of type '<SonarState>"
  "f2ce4939f8f3dfc676d65cd5efeee830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarState)))
  "Returns md5sum for a message object of type 'SonarState"
  "f2ce4939f8f3dfc676d65cd5efeee830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarState>)))
  "Returns full string definition for message of type '<SonarState>"
  (cl:format cl:nil "bool array_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarState)))
  "Returns full string definition for message of type 'SonarState"
  (cl:format cl:nil "bool array_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarState>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarState
    (cl:cons ':array_power (array_power msg))
))
