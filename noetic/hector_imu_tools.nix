{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_imu_tools";
  pkgFinal = final.noetic.hector_imu_tools;
  src = srcs.hector_slam.hector_imu_tools;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
