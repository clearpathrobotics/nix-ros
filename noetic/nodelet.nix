{
  bondcpp,
  boost,
  catkin,
  cmake_modules,
  message_generation,
  message_runtime,
  pluginlib,
  rosconsole,
  roscpp,
  rospy,
  std_msgs,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodelet";
  pkgFinal = final.noetic.nodelet;
  src = srcs.nodelet_core.nodelet;

  colconBuildDepends = [
    bondcpp
    boost
    catkin
    cmake_modules
    message_generation
    pluginlib
    rosconsole
    roscpp
    std_msgs
    util-linux
  ];

  colconRunDepends = [
    bondcpp
    boost
    message_runtime
    pluginlib
    rosconsole
    roscpp
    rospy
    std_msgs
    util-linux
  ];

  colconTestDepends = [
  ];
}
