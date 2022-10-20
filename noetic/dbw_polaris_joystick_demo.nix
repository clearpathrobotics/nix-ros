{
  catkin,
  dbw_polaris_can,
  dbw_polaris_msgs,
  joy,
  roscpp,
  roslaunch,
  roslib,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_polaris_joystick_demo";
  pkgFinal = final.noetic.dbw_polaris_joystick_demo;
  src = srcs.dbw_polaris_ros.dbw_polaris_joystick_demo;

  colconBuildDepends = [
    catkin
    dbw_polaris_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    dbw_polaris_can
    dbw_polaris_msgs
    joy
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    roslaunch
    roslib
  ];
}
