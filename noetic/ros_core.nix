{
  catkin,
  class_loader,
  cmake_modules,
  common_msgs,
  gencpp,
  geneus,
  genlisp,
  genmsg,
  gennodejs,
  genpy,
  message_generation,
  message_runtime,
  pluginlib,
  ros,
  ros_comm,
  rosbag_migration_rule,
  rosconsole,
  rosconsole_bridge,
  roscpp_core,
  rosgraph_msgs,
  roslisp,
  rospack,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_core";
  pkgFinal = final.noetic.ros_core;
  src = srcs.metapackages.ros_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    catkin
    class_loader
    cmake_modules
    common_msgs
    gencpp
    geneus
    genlisp
    genmsg
    gennodejs
    genpy
    message_generation
    message_runtime
    pluginlib
    ros
    ros_comm
    rosbag_migration_rule
    rosconsole
    rosconsole_bridge
    roscpp_core
    rosgraph_msgs
    roslisp
    rospack
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
