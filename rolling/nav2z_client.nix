{
  ament_cmake,
  angles,
  bond,
  pluginlib,
  smacc2,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2z_client";
  pkgFinal = final.rolling.nav2z_client;
  src = srcs.SMACC2.nav2z_client;

  colconBuildDepends = [
    ament_cmake
    angles
    bond
    pluginlib
    smacc2
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    angles
    bond
    pluginlib
    smacc2
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconTestDepends = [
  ];
}
