{
  ament_cmake,
  pcl_conversions,
  pcl_msgs,
  pcl_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "perception_pcl";
  pkgFinal = final.rolling.perception_pcl;
  src = srcs.perception_pcl.perception_pcl;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    pcl_conversions
    pcl_msgs
    pcl_ros
  ];

  colconTestDepends = [
  ];
}
