{
  boost,
  canopen_master,
  catkin,
  diagnostic_updater,
  message_generation,
  message_runtime,
  pluginlib,
  rosconsole_bridge,
  roscpp,
  roslib,
  socketcan_interface,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "canopen_chain_node";
  pkgFinal = final.noetic.canopen_chain_node;
  src = srcs.ros_canopen.canopen_chain_node;

  colconBuildDepends = [
    boost
    canopen_master
    catkin
    diagnostic_updater
    message_generation
    pluginlib
    rosconsole_bridge
    roscpp
    roslib
    socketcan_interface
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    boost
    canopen_master
    diagnostic_updater
    message_runtime
    pluginlib
    rosconsole_bridge
    roscpp
    roslib
    socketcan_interface
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
