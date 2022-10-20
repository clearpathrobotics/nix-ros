{
  can_msgs,
  canopen_402,
  canopen_chain_node,
  canopen_master,
  canopen_motor_node,
  catkin,
  socketcan_bridge,
  socketcan_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_canopen";
  pkgFinal = final.noetic.ros_canopen;
  src = srcs.ros_canopen.ros_canopen;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    can_msgs
    canopen_402
    canopen_chain_node
    canopen_master
    canopen_motor_node
    socketcan_bridge
    socketcan_interface
  ];

  colconTestDepends = [
  ];
}
