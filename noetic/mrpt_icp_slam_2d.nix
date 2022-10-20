{
  catkin,
  dynamic_reconfigure,
  mrpt2,
  mrpt_rawlog,
  nav_msgs,
  roscpp,
  roslaunch,
  roslib,
  rviz,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_icp_slam_2d";
  pkgFinal = final.noetic.mrpt_icp_slam_2d;
  src = srcs.mrpt_slam.mrpt_icp_slam_2d;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mrpt2
    nav_msgs
    roscpp
    roslaunch
    roslib
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mrpt2
    mrpt_rawlog
    nav_msgs
    roscpp
    roslaunch
    roslib
    rviz
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
