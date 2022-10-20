{
  actionlib,
  actionlib_msgs,
  angles,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  rosconsole,
  roscpp,
  std_msgs,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtle_actionlib";
  pkgFinal = final.noetic.turtle_actionlib;
  src = srcs.common_tutorials.turtle_actionlib;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    angles
    catkin
    geometry_msgs
    message_generation
    rosconsole
    roscpp
    std_msgs
    turtlesim
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    angles
    geometry_msgs
    message_runtime
    rosconsole
    roscpp
    std_msgs
    turtlesim
  ];

  colconTestDepends = [
  ];
}
