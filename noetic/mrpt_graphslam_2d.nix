{
  catkin,
  fkie_multimaster_msgs,
  geometry_msgs,
  mrpt2,
  mrpt_msgs,
  mrpt_msgs_bridge,
  nav_msgs,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_graphslam_2d";
  pkgFinal = final.noetic.mrpt_graphslam_2d;
  src = srcs.mrpt_slam.mrpt_graphslam_2d;

  colconBuildDepends = [
    catkin
    fkie_multimaster_msgs
    geometry_msgs
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    fkie_multimaster_msgs
    geometry_msgs
    mrpt2
    mrpt_msgs
    mrpt_msgs_bridge
    nav_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
