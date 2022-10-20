{
  catkin,
  velodyne_driver,
  velodyne_laserscan,
  velodyne_msgs,
  velodyne_pointcloud,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne";
  pkgFinal = final.noetic.velodyne;
  src = srcs.velodyne.velodyne;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    velodyne_driver
    velodyne_laserscan
    velodyne_msgs
    velodyne_pointcloud
  ];

  colconTestDepends = [
  ];
}
