{
  catkin,
  eigen,
  geometry_msgs,
  neonavigation_common,
  pcl,
  pcl_conversions,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "obj_to_pointcloud";
  pkgFinal = final.noetic.obj_to_pointcloud;
  src = srcs.neonavigation.obj_to_pointcloud;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    neonavigation_common
    pcl
    pcl_conversions
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    neonavigation_common
    pcl
    pcl_conversions
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
