{
  actionlib,
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  mrpt2,
  roscpp,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_reactivenav2d";
  pkgFinal = final.noetic.mrpt_reactivenav2d;
  src = srcs.mrpt_navigation.mrpt_reactivenav2d;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    dynamic_reconfigure
    geometry_msgs
    mrpt2
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    dynamic_reconfigure
    geometry_msgs
    mrpt2
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
