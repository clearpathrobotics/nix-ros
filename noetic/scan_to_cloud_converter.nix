{
  catkin,
  pcl,
  pcl_conversions,
  pcl_ros,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "scan_to_cloud_converter";
  pkgFinal = final.noetic.scan_to_cloud_converter;
  src = srcs.scan_tools.scan_to_cloud_converter;

  colconBuildDepends = [
    catkin
    pcl
    pcl_conversions
    pcl_ros
    roscpp
  ];

  colconRunDepends = [
    pcl
    pcl_conversions
    pcl_ros
    roscpp
  ];

  colconTestDepends = [
  ];
}
