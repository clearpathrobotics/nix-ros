{
  catkin,
  control_msgs,
  controller_interface,
  geometry_msgs,
  interactive_markers,
  qb_chain_msgs,
  roscpp,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  trac_ik_lib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_chain_controllers";
  pkgFinal = final.noetic.qb_chain_controllers;
  src = srcs.qb_chain.qb_chain_controllers;

  colconBuildDepends = [
    catkin
    control_msgs
    controller_interface
    geometry_msgs
    interactive_markers
    qb_chain_msgs
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trac_ik_lib
  ];

  colconRunDepends = [
    control_msgs
    controller_interface
    geometry_msgs
    interactive_markers
    qb_chain_msgs
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trac_ik_lib
  ];

  colconTestDepends = [
  ];
}
