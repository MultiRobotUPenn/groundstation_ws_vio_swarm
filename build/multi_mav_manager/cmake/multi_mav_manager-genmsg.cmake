# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multi_mav_manager: 0 messages, 2 services")

set(MSG_I_FLAGS "-Iquadrotor_msgs:/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multi_mav_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_custom_target(_multi_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_mav_manager" "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" "quadrotor_msgs/FlatOutputs"
)

get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_custom_target(_multi_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multi_mav_manager" "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
  "${MSG_I_FLAGS}"
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg/FlatOutputs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_mav_manager
)
_generate_srv_cpp(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_mav_manager
)

### Generating Module File
_generate_module_cpp(multi_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_mav_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multi_mav_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multi_mav_manager_generate_messages multi_mav_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_cpp _multi_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_cpp _multi_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_mav_manager_gencpp)
add_dependencies(multi_mav_manager_gencpp multi_mav_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_mav_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
  "${MSG_I_FLAGS}"
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg/FlatOutputs.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_mav_manager
)
_generate_srv_eus(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_mav_manager
)

### Generating Module File
_generate_module_eus(multi_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_mav_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multi_mav_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multi_mav_manager_generate_messages multi_mav_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_eus _multi_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_eus _multi_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_mav_manager_geneus)
add_dependencies(multi_mav_manager_geneus multi_mav_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_mav_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
  "${MSG_I_FLAGS}"
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg/FlatOutputs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_mav_manager
)
_generate_srv_lisp(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_mav_manager
)

### Generating Module File
_generate_module_lisp(multi_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_mav_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multi_mav_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multi_mav_manager_generate_messages multi_mav_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_lisp _multi_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_lisp _multi_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_mav_manager_genlisp)
add_dependencies(multi_mav_manager_genlisp multi_mav_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_mav_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
  "${MSG_I_FLAGS}"
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg/FlatOutputs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_mav_manager
)
_generate_srv_nodejs(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_mav_manager
)

### Generating Module File
_generate_module_nodejs(multi_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_mav_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multi_mav_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multi_mav_manager_generate_messages multi_mav_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_nodejs _multi_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_nodejs _multi_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_mav_manager_gennodejs)
add_dependencies(multi_mav_manager_gennodejs multi_mav_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_mav_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
  "${MSG_I_FLAGS}"
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg/FlatOutputs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager
)
_generate_srv_py(multi_mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager
)

### Generating Module File
_generate_module_py(multi_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multi_mav_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multi_mav_manager_generate_messages multi_mav_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_py _multi_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv" NAME_WE)
add_dependencies(multi_mav_manager_generate_messages_py _multi_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multi_mav_manager_genpy)
add_dependencies(multi_mav_manager_genpy multi_mav_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multi_mav_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multi_mav_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET quadrotor_msgs_generate_messages_cpp)
  add_dependencies(multi_mav_manager_generate_messages_cpp quadrotor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multi_mav_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET quadrotor_msgs_generate_messages_eus)
  add_dependencies(multi_mav_manager_generate_messages_eus quadrotor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multi_mav_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET quadrotor_msgs_generate_messages_lisp)
  add_dependencies(multi_mav_manager_generate_messages_lisp quadrotor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multi_mav_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET quadrotor_msgs_generate_messages_nodejs)
  add_dependencies(multi_mav_manager_generate_messages_nodejs quadrotor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multi_mav_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET quadrotor_msgs_generate_messages_py)
  add_dependencies(multi_mav_manager_generate_messages_py quadrotor_msgs_generate_messages_py)
endif()
