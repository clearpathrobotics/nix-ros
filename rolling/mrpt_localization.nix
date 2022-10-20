{
  ament_cmake,
  cmake,
  mrpt2,
  mrpt_msgs,
  mrpt_msgs_bridge,
  nav_msgs,
  pose_cov_ops,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_localization";
  pkgFinal = final.rolling.mrpt_localization;
  src = srcs.mrpt_navigation.mrpt_localization;

  colconBuildDepends = [
    ament_cmake
    cmake
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    pose_cov_ops
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    pose_cov_ops
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
