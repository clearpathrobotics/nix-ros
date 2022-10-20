{
  catkin,
  geometry_msgs,
  marker_msgs,
  mrpt2,
  mrpt_msgs,
  ros_environment,
  roscpp,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_msgs_bridge";
  pkgFinal = final.noetic.mrpt_msgs_bridge;
  src = srcs.mrpt_navigation.mrpt_msgs_bridge;

  colconBuildDepends = [
    catkin
    geometry_msgs
    marker_msgs
    mrpt2
    mrpt_msgs
    ros_environment
    roscpp
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    marker_msgs
    mrpt2
    mrpt_msgs
    roscpp
    tf2
  ];

  colconTestDepends = [
  ];
}
