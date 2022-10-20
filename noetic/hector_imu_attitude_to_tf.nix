{
  catkin,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_imu_attitude_to_tf";
  pkgFinal = final.noetic.hector_imu_attitude_to_tf;
  src = srcs.hector_slam.hector_imu_attitude_to_tf;

  colconBuildDepends = [
    catkin
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
