{
  angles,
  catkin,
  cmake_modules,
  diagnostic_msgs,
  diagnostic_updater,
  eigen,
  eigen_conversions,
  geographic_msgs,
  geographiclib,
  geometry_msgs,
  libyamlcpp,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  nodelet,
  python3Packages,
  rosbag,
  roscpp,
  roslint,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_localization";
  pkgFinal = final.noetic.robot_localization;
  src = srcs.robot_localization.robot_localization;

  colconBuildDepends = [
    angles
    catkin
    cmake_modules
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen_conversions
    geographic_msgs
    geographiclib
    geometry_msgs
    libyamlcpp
    message_filters
    message_generation
    nav_msgs
    nodelet
    python3Packages.catkin-pkg
    roscpp
    roslint
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    angles
    cmake_modules
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen_conversions
    geographic_msgs
    geographiclib
    geometry_msgs
    libyamlcpp
    message_filters
    message_runtime
    nav_msgs
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rosbag
    rostest
    rosunit
  ];
}
