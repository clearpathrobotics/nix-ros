{
  catkin,
  eigen,
  pcl,
  pcl_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_conversions";
  pkgFinal = final.noetic.pcl_conversions;
  src = srcs.perception_pcl.pcl_conversions;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    eigen
    pcl
    pcl_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    eigen
    pcl
    pcl_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];
}
