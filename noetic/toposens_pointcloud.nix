{
  catkin,
  geometry_msgs,
  message_runtime,
  pcl_ros,
  roscpp,
  roslaunch,
  rostest,
  tf2,
  tf2_geometry_msgs,
  toposens_driver,
  toposens_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_pointcloud";
  pkgFinal = final.noetic.toposens_pointcloud;
  src = srcs.toposens.toposens_pointcloud;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_runtime
    pcl_ros
    roscpp
    tf2
    tf2_geometry_msgs
    toposens_driver
    toposens_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    pcl_ros
    roscpp
    tf2
    tf2_geometry_msgs
    toposens_driver
    toposens_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
