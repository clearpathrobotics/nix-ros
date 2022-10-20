{
  actionlib,
  actionlib_msgs,
  catkin,
  eigen,
  laser_geometry,
  message_generation,
  message_runtime,
  pcl_conversions,
  pcl_ros,
  pr2_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_tilt_laser_interface";
  pkgFinal = final.noetic.pr2_tilt_laser_interface;
  src = srcs.pr2_common_actions.pr2_tilt_laser_interface;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    eigen
    laser_geometry
    message_generation
    pcl_conversions
    pcl_ros
    pr2_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    eigen
    laser_geometry
    message_runtime
    pcl_conversions
    pcl_ros
    pr2_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
