FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/p2os_driver/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/p2os_driver/GripState.h"
  "../msg_gen/cpp/include/p2os_driver/SonarState.h"
  "../msg_gen/cpp/include/p2os_driver/BatteryState.h"
  "../msg_gen/cpp/include/p2os_driver/MotorState.h"
  "../msg_gen/cpp/include/p2os_driver/GripperState.h"
  "../msg_gen/cpp/include/p2os_driver/SonarArray.h"
  "../msg_gen/cpp/include/p2os_driver/AIO.h"
  "../msg_gen/cpp/include/p2os_driver/LiftState.h"
  "../msg_gen/cpp/include/p2os_driver/PTZState.h"
  "../msg_gen/cpp/include/p2os_driver/DIO.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
