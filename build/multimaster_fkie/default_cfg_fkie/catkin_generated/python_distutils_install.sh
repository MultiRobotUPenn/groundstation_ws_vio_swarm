#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aarow/ros/vio_swarm_groundstation_ws/src/multimaster_fkie/default_cfg_fkie"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aarow/ros/vio_swarm_groundstation_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aarow/ros/vio_swarm_groundstation_ws/install/lib/python2.7/dist-packages:/home/aarow/ros/vio_swarm_groundstation_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aarow/ros/vio_swarm_groundstation_ws/build" \
    "/usr/bin/python" \
    "/home/aarow/ros/vio_swarm_groundstation_ws/src/multimaster_fkie/default_cfg_fkie/setup.py" \
    build --build-base "/home/aarow/ros/vio_swarm_groundstation_ws/build/multimaster_fkie/default_cfg_fkie" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/aarow/ros/vio_swarm_groundstation_ws/install" --install-scripts="/home/aarow/ros/vio_swarm_groundstation_ws/install/bin"
