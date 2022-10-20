{
  catkin,
  dynamic_reconfigure,
  mrpt2,
  mrpt_msgs,
  mrpt_msgs_bridge,
  nav_msgs,
  pose_cov_ops,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_localization";
  pkgFinal = final.noetic.mrpt_localization;
  src = srcs.mrpt_navigation.mrpt_localization;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    pose_cov_ops
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    pose_cov_ops
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
