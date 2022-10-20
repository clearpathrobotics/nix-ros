{
  catkin,
  dynamic_reconfigure,
  mrpt2,
  mrpt_msgs_bridge,
  mrpt_rawlog,
  mvsim,
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
  name = "mrpt_rbpf_slam";
  pkgFinal = final.noetic.mrpt_rbpf_slam;
  src = srcs.mrpt_slam.mrpt_rbpf_slam;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mrpt2
    mrpt_msgs_bridge
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
    mrpt_msgs_bridge
    mrpt_rawlog
    mvsim
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
