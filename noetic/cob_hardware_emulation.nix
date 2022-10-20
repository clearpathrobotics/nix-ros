{
  actionlib,
  actionlib_msgs,
  catkin,
  control_msgs,
  move_base_msgs,
  nav_msgs,
  roscpp,
  rosgraph_msgs,
  rospy,
  sensor_msgs,
  std_srvs,
  tf2_ros,
  tf_conversions,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_hardware_emulation";
  pkgFinal = final.noetic.cob_hardware_emulation;
  src = srcs.cob_control.cob_hardware_emulation;

  colconBuildDepends = [
    catkin
    roscpp
    rosgraph_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    control_msgs
    move_base_msgs
    nav_msgs
    roscpp
    rosgraph_msgs
    rospy
    sensor_msgs
    std_srvs
    tf2_ros
    tf_conversions
  ];

  colconTestDepends = [
  ];
}
