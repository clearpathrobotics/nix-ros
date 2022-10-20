{
  catkin,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_from_ios_sensorlog";
  pkgFinal = final.noetic.imu_from_ios_sensorlog;
  src = srcs.imu_from_ios_sensorlog.imu_from_ios_sensorlog;

  colconBuildDepends = [
    catkin
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
  ];

  colconRunDepends = [
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
