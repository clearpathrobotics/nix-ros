{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  genmsg,
  message_generation,
  message_runtime,
  roscpp,
  std_msgs,
  tf,
  tf2_ros,
  toposens_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_echo_driver";
  pkgFinal = final.noetic.toposens_echo_driver;
  src = srcs.toposens.toposens_echo_driver;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamic_reconfigure
    genmsg
    message_generation
    message_runtime
    roscpp
    std_msgs
    tf
    tf2_ros
    toposens_msgs
  ];

  colconRunDepends = [
    cmake_modules
    dynamic_reconfigure
    genmsg
    message_generation
    message_runtime
    roscpp
    std_msgs
    tf
    tf2_ros
    toposens_msgs
  ];

  colconTestDepends = [
  ];
}
