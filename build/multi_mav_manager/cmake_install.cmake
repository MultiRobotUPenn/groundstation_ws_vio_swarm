# Install script for directory: /home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aarow/ros/vio_swarm_groundstation_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/srv" TYPE FILE FILES
    "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/Formation.srv"
    "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/srv/RawPosFormation.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/cmake" TYPE FILE FILES "/home/aarow/ros/vio_swarm_groundstation_ws/build/multi_mav_manager/catkin_generated/installspace/multi_mav_manager-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/include/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/share/roseus/ros/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/share/common-lisp/ros/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/share/gennodejs/ros/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/python2.7/dist-packages/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/python2.7/dist-packages/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aarow/ros/vio_swarm_groundstation_ws/build/multi_mav_manager/catkin_generated/installspace/multi_mav_manager.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/cmake" TYPE FILE FILES "/home/aarow/ros/vio_swarm_groundstation_ws/build/multi_mav_manager/catkin_generated/installspace/multi_mav_manager-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/cmake" TYPE FILE FILES
    "/home/aarow/ros/vio_swarm_groundstation_ws/build/multi_mav_manager/catkin_generated/installspace/multi_mav_managerConfig.cmake"
    "/home/aarow/ros/vio_swarm_groundstation_ws/build/multi_mav_manager/catkin_generated/installspace/multi_mav_managerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager" TYPE FILE FILES "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager" TYPE EXECUTABLE FILES "/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/multi_mav_manager/multi_mav_services")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services"
         OLD_RPATH "/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/multi_mav_manager/multi_mav_services")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/config" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/config/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/launch" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/include" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/include/multi_mav_manager")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/multi_mav_manager/src" TYPE DIRECTORY FILES "/home/aarow/ros/vio_swarm_groundstation_ws/src/multi_mav_manager/src/")
endif()

