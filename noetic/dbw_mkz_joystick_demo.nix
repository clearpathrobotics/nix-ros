{
  catkin,
  dbw_mkz_can,
  dbw_mkz_msgs,
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
  name = "dbw_mkz_joystick_demo";
  pkgFinal = final.noetic.dbw_mkz_joystick_demo;
  src = srcs.dbw_mkz_ros.dbw_mkz_joystick_demo;

  colconBuildDepends = [
    catkin
    dbw_mkz_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    dbw_mkz_can
    dbw_mkz_msgs
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
