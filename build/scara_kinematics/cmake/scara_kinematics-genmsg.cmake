# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scara_kinematics: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scara_kinematics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" ""
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" ""
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_custom_target(_scara_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_kinematics" "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_cpp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
)

### Generating Module File
_generate_module_cpp(scara_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scara_kinematics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scara_kinematics_generate_messages scara_kinematics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_cpp _scara_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_kinematics_gencpp)
add_dependencies(scara_kinematics_gencpp scara_kinematics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_kinematics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)
_generate_srv_eus(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
)

### Generating Module File
_generate_module_eus(scara_kinematics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(scara_kinematics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(scara_kinematics_generate_messages scara_kinematics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_eus _scara_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_kinematics_geneus)
add_dependencies(scara_kinematics_geneus scara_kinematics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_kinematics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)
_generate_srv_lisp(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
)

### Generating Module File
_generate_module_lisp(scara_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scara_kinematics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scara_kinematics_generate_messages scara_kinematics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_lisp _scara_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_kinematics_genlisp)
add_dependencies(scara_kinematics_genlisp scara_kinematics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_kinematics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)
_generate_srv_nodejs(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
)

### Generating Module File
_generate_module_nodejs(scara_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(scara_kinematics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(scara_kinematics_generate_messages scara_kinematics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_nodejs _scara_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_kinematics_gennodejs)
add_dependencies(scara_kinematics_gennodejs scara_kinematics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_kinematics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)
_generate_srv_py(scara_kinematics
  "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
)

### Generating Module File
_generate_module_py(scara_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scara_kinematics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scara_kinematics_generate_messages scara_kinematics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/JointSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToJoints.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Forkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/Ivkin.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveRobot.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/MoveToPoint.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mcm/RBE500/src/scara_kinematics/srv/TaskSpaceVelocities.srv" NAME_WE)
add_dependencies(scara_kinematics_generate_messages_py _scara_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_kinematics_genpy)
add_dependencies(scara_kinematics_genpy scara_kinematics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_kinematics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_kinematics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scara_kinematics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(scara_kinematics_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scara_kinematics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(scara_kinematics_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(scara_kinematics_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_kinematics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scara_kinematics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(scara_kinematics_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scara_kinematics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(scara_kinematics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(scara_kinematics_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_kinematics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scara_kinematics_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(scara_kinematics_generate_messages_py geometry_msgs_generate_messages_py)
endif()
