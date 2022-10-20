{
  catkin,
  rosconsole,
  roscpp,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rplidar_ros";
  pkgFinal = final.noetic.rplidar_ros;
  src = srcs.rplidar_ros.rplidar_ros;

  colconBuildDepends = [
    catkin
    rosconsole
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    rosconsole
    roscpp
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
