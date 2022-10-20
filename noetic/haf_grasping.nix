{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  image_geometry,
  message_generation,
  message_runtime,
  pcl_conversions,
  pcl_msgs,
  pcl_ros,
  roscpp,
  roslib,
  sensor_msgs,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "haf_grasping";
  pkgFinal = final.noetic.haf_grasping;
  src = srcs.haf_grasping.haf_grasping;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    image_geometry
    message_generation
    pcl_conversions
    pcl_msgs
    pcl_ros
    roscpp
    roslib
    sensor_msgs
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    pcl_conversions
    pcl_ros
    roscpp
    roslib
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
