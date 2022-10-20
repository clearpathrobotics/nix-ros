{
  ament_cmake,
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
  pkgFinal = final.rolling.velodyne;
  src = srcs.velodyne.velodyne;

  colconBuildDepends = [
    ament_cmake
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
