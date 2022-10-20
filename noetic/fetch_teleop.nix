{
  actionlib,
  catkin,
  control_msgs,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_teleop";
  pkgFinal = final.noetic.fetch_teleop;
  src = srcs.fetch_ros.fetch_teleop;

  colconBuildDepends = [
    actionlib
    catkin
    control_msgs
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    topic_tools
  ];

  colconRunDepends = [
    actionlib
    control_msgs
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    topic_tools
  ];

  colconTestDepends = [
  ];
}
