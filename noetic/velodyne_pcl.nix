{
  catkin,
  pcl_ros,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_pcl";
  pkgFinal = final.noetic.velodyne_pcl;
  src = srcs.velodyne.velodyne_pcl;

  colconBuildDepends = [
    catkin
    pcl_ros
    roslint
  ];

  colconRunDepends = [
    pcl_ros
  ];

  colconTestDepends = [
  ];
}
