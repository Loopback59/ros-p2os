cmake_minimum_required(VERSION 2.8.3)
project(p2os_urdf)

find_package(catkin REQUIRED COMPONENTS roscpp sensor_msgs nav_msgs tf)


###################################################
## Declare things to be passed to other projects ##
###################################################

## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES p2os_urdf
  CATKIN_DEPENDS roscpp sensor_msgs nav_msgs tf
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Declare a cpp executable
add_executable(p2os_urdf_publisher src/publisher.cc)
target_link_libraries(p2os_urdf_publisher ${catkin_LIBRARIES} )

#############
## Install ##
#############

## Mark executables and/or libraries for installation
 install(TARGETS p2os_urdf_publisher
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
 )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
 install(DIRECTORY 
   defs 
   launch
   meshes 
   models
   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
 )



