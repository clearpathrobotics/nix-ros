{
  angles,
  boost,
  catkin,
  cmake_modules,
  diagnostic_msgs,
  diagnostic_updater,
  eigen,
  eigen_conversions,
  geographic_msgs,
  geographiclib,
  geometry_msgs,
  gtest,
  libmavconn,
  mavlink,
  mavros_msgs,
  message_runtime,
  nav_msgs,
  pluginlib,
  rosconsole_bridge,
  roscpp,
  rospy,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavros";
  pkgFinal = final.noetic.mavros;
  src = srcs.mavros.mavros;

  colconBuildDepends = [
    angles
    boost
    catkin
    cmake_modules
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen_conversions
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    mavlink
    mavros_msgs
    nav_msgs
    pluginlib
    rosconsole_bridge
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    diagnostic_updater
    eigen
    eigen_conversions
    geographic_msgs
    geographiclib
    geometry_msgs
    libmavconn
    mavlink
    mavros_msgs
    message_runtime
    nav_msgs
    pluginlib
    rosconsole_bridge
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf2_eigen
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
