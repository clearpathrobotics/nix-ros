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
  name = "imu_processors";
  pkgFinal = final.noetic.imu_processors;
  src = srcs.imu_pipeline.imu_processors;

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
