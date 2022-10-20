{
  actionlib_msgs,
  catkin,
  diagnostic_msgs,
  geometry_msgs,
  nav_msgs,
  sensor_msgs,
  shape_msgs,
  stereo_msgs,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "common_msgs";
  pkgFinal = final.noetic.common_msgs;
  src = srcs.common_msgs.common_msgs;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib_msgs
    diagnostic_msgs
    geometry_msgs
    nav_msgs
    sensor_msgs
    shape_msgs
    stereo_msgs
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
