{
  catkin,
  pcl_conversions,
  pcl_msgs,
  pcl_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "perception_pcl";
  pkgFinal = final.noetic.perception_pcl;
  src = srcs.perception_pcl.perception_pcl;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pcl_conversions
    pcl_msgs
    pcl_ros
  ];

  colconTestDepends = [
  ];
}
