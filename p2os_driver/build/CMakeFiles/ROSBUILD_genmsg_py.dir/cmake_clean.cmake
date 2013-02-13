FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/p2os_driver/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/p2os_driver/msg/__init__.py"
  "../src/p2os_driver/msg/_GripState.py"
  "../src/p2os_driver/msg/_SonarState.py"
  "../src/p2os_driver/msg/_BatteryState.py"
  "../src/p2os_driver/msg/_MotorState.py"
  "../src/p2os_driver/msg/_GripperState.py"
  "../src/p2os_driver/msg/_SonarArray.py"
  "../src/p2os_driver/msg/_AIO.py"
  "../src/p2os_driver/msg/_LiftState.py"
  "../src/p2os_driver/msg/_PTZState.py"
  "../src/p2os_driver/msg/_DIO.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
