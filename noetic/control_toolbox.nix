{
  catkin,
  cmake_modules,
  control_msgs,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  realtime_tools,
  roscpp,
  rosunit,
  std_msgs,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "control_toolbox";
  pkgFinal = final.noetic.control_toolbox;
  src = srcs.control_toolbox.control_toolbox;

  colconBuildDepends = [
    catkin
    cmake_modules
    control_msgs
    dynamic_reconfigure
    message_generation
    realtime_tools
    roscpp
    std_msgs
    tinyxml
  ];

  colconRunDepends = [
    control_msgs
    dynamic_reconfigure
    message_runtime
    realtime_tools
    roscpp
    std_msgs
    tinyxml
  ];

  colconTestDepends = [
    rosunit
  ];
}
