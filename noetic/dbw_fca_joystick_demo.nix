{
  catkin,
  dbw_fca_can,
  dbw_fca_msgs,
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
  name = "dbw_fca_joystick_demo";
  pkgFinal = final.noetic.dbw_fca_joystick_demo;
  src = srcs.dbw_fca_ros.dbw_fca_joystick_demo;

  colconBuildDepends = [
    catkin
    dbw_fca_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    dbw_fca_can
    dbw_fca_msgs
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
