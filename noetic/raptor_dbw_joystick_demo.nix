{
  catkin,
  joy,
  raptor_dbw_can,
  raptor_dbw_msgs,
  roscpp,
  roslaunch,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "raptor_dbw_joystick_demo";
  pkgFinal = final.noetic.raptor_dbw_joystick_demo;
  src = srcs.raptor-dbw-ros.raptor_dbw_joystick_demo;

  colconBuildDepends = [
    catkin
    raptor_dbw_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    joy
    raptor_dbw_can
    raptor_dbw_msgs
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
