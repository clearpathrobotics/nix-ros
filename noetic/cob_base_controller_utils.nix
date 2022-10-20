{
  catkin,
  controller_manager_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  rospy,
  std_msgs,
  std_srvs,
  tf,
  tf2,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_base_controller_utils";
  pkgFinal = final.noetic.cob_base_controller_utils;
  src = srcs.cob_control.cob_base_controller_utils;

  colconBuildDepends = [
    catkin
    controller_manager_msgs
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
    tf2
    urdf
  ];

  colconRunDepends = [
    controller_manager_msgs
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    rospy
    std_msgs
    std_srvs
    tf
    tf2
    urdf
  ];

  colconTestDepends = [
  ];
}
