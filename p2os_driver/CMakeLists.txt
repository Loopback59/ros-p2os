cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
#set(ROS_BUILD_TYPE RelWithDebInfo)

rosbuild_init()
rosbuild_genmsg()
rosbuild_add_executable(bin/p2os src/p2os_driver/p2osnode.cc 
                                 src/p2os_driver/p2os.cc 
                                 src/p2os_driver/kinecalc.cc 
                                 src/p2os_driver/packet.cc 
                                 src/p2os_driver/robot_params.cc 
                                 src/p2os_driver/sip.cc 
                                 src/p2os_driver/p2os_ptz.cpp)
