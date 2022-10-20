{
  catkin,
  geometry_msgs,
  neonavigation_common,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joystick_interrupt";
  pkgFinal = final.noetic.joystick_interrupt;
  src = srcs.neonavigation.joystick_interrupt;

  colconBuildDepends = [
    catkin
    geometry_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    topic_tools
  ];

  colconRunDepends = [
    geometry_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    topic_tools
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
