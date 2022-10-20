{
  boost,
  canopen_402,
  canopen_chain_node,
  canopen_master,
  catkin,
  controller_manager,
  controller_manager_msgs,
  filters,
  hardware_interface,
  joint_limits_interface,
  muparser,
  roscpp,
  rosunit,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "canopen_motor_node";
  pkgFinal = final.noetic.canopen_motor_node;
  src = srcs.ros_canopen.canopen_motor_node;

  colconBuildDepends = [
    boost
    canopen_402
    canopen_chain_node
    canopen_master
    catkin
    controller_manager
    controller_manager_msgs
    filters
    hardware_interface
    joint_limits_interface
    muparser
    roscpp
    urdf
  ];

  colconRunDepends = [
    boost
    canopen_402
    canopen_chain_node
    canopen_master
    controller_manager
    controller_manager_msgs
    filters
    hardware_interface
    joint_limits_interface
    muparser
    roscpp
    urdf
  ];

  colconTestDepends = [
    rosunit
  ];
}
