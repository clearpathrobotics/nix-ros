{
  actionlib,
  catkin,
  nav_msgs,
  rm_common,
  rm_msgs,
  roscpp,
  roslint,
  sensor_msgs,
  serial,
  std_msgs,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_referee";
  pkgFinal = final.noetic.rm_referee;
  src = srcs.rm_control.rm_referee;

  colconBuildDepends = [
    actionlib
    catkin
    nav_msgs
    rm_common
    rm_msgs
    roscpp
    roslint
    sensor_msgs
    serial
    std_msgs
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    actionlib
    nav_msgs
    rm_common
    rm_msgs
    roscpp
    roslint
    sensor_msgs
    serial
    std_msgs
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
