# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot_path_tracker: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iturtlebot_path_tracker:/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot_path_tracker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_custom_target(_turtlebot_path_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot_path_tracker" "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot_path_tracker
  "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_path_tracker
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtlebot_path_tracker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_path_tracker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot_path_tracker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot_path_tracker_generate_messages turtlebot_path_tracker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_dependencies(turtlebot_path_tracker_generate_messages_cpp _turtlebot_path_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_path_tracker_gencpp)
add_dependencies(turtlebot_path_tracker_gencpp turtlebot_path_tracker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_path_tracker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot_path_tracker
  "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_path_tracker
)

### Generating Services

### Generating Module File
_generate_module_eus(turtlebot_path_tracker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_path_tracker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot_path_tracker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot_path_tracker_generate_messages turtlebot_path_tracker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_dependencies(turtlebot_path_tracker_generate_messages_eus _turtlebot_path_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_path_tracker_geneus)
add_dependencies(turtlebot_path_tracker_geneus turtlebot_path_tracker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_path_tracker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot_path_tracker
  "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_path_tracker
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtlebot_path_tracker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_path_tracker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot_path_tracker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot_path_tracker_generate_messages turtlebot_path_tracker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_dependencies(turtlebot_path_tracker_generate_messages_lisp _turtlebot_path_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_path_tracker_genlisp)
add_dependencies(turtlebot_path_tracker_genlisp turtlebot_path_tracker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_path_tracker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot_path_tracker
  "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_path_tracker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(turtlebot_path_tracker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_path_tracker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot_path_tracker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot_path_tracker_generate_messages turtlebot_path_tracker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_dependencies(turtlebot_path_tracker_generate_messages_nodejs _turtlebot_path_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_path_tracker_gennodejs)
add_dependencies(turtlebot_path_tracker_gennodejs turtlebot_path_tracker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_path_tracker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot_path_tracker
  "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_path_tracker
)

### Generating Services

### Generating Module File
_generate_module_py(turtlebot_path_tracker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_path_tracker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot_path_tracker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot_path_tracker_generate_messages turtlebot_path_tracker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jinsu_park/catkin_ws/src/turtlebot_path_tracker/msg/LocalPathPoints.msg" NAME_WE)
add_dependencies(turtlebot_path_tracker_generate_messages_py _turtlebot_path_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot_path_tracker_genpy)
add_dependencies(turtlebot_path_tracker_genpy turtlebot_path_tracker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot_path_tracker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_path_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot_path_tracker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(turtlebot_path_tracker_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_path_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot_path_tracker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(turtlebot_path_tracker_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_path_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot_path_tracker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(turtlebot_path_tracker_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_path_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot_path_tracker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot_path_tracker_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_path_tracker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_path_tracker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot_path_tracker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(turtlebot_path_tracker_generate_messages_py geometry_msgs_generate_messages_py)
endif()
