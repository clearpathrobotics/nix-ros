{
  catkin,
  pcl_ros,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "quanergy_client_ros";
  pkgFinal = final.noetic.quanergy_client_ros;
  src = srcs.quanergy_client_ros.quanergy_client_ros;

  colconBuildDepends = [
    catkin
    pcl_ros
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    pcl_ros
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
