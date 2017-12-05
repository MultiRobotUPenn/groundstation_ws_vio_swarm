# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mav_manager: 0 messages, 2 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mav_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_custom_target(_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_manager" "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" ""
)

get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_custom_target(_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_manager" "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_manager
)
_generate_srv_cpp(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_manager
)

### Generating Module File
_generate_module_cpp(mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mav_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mav_manager_generate_messages mav_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_cpp _mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_cpp _mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_manager_gencpp)
add_dependencies(mav_manager_gencpp mav_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_manager
)
_generate_srv_eus(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_manager
)

### Generating Module File
_generate_module_eus(mav_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mav_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mav_manager_generate_messages mav_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_eus _mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_eus _mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_manager_geneus)
add_dependencies(mav_manager_geneus mav_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_manager
)
_generate_srv_lisp(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_manager
)

### Generating Module File
_generate_module_lisp(mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mav_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mav_manager_generate_messages mav_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_lisp _mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_lisp _mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_manager_genlisp)
add_dependencies(mav_manager_genlisp mav_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_manager
)
_generate_srv_nodejs(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_manager
)

### Generating Module File
_generate_module_nodejs(mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mav_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mav_manager_generate_messages mav_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_nodejs _mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_nodejs _mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_manager_gennodejs)
add_dependencies(mav_manager_gennodejs mav_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager
)
_generate_srv_py(mav_manager
  "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager
)

### Generating Module File
_generate_module_py(mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mav_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mav_manager_generate_messages mav_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_py _mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(mav_manager_generate_messages_py _mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_manager_genpy)
add_dependencies(mav_manager_genpy mav_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mav_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mav_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
