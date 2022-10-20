{
  catkin,
  geometry_msgs,
  joy,
  roscpp,
  roslaunch,
  roslint,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_twist_joy";
  pkgFinal = final.noetic.teleop_twist_joy;
  src = srcs.teleop_twist_joy.teleop_twist_joy;

  colconBuildDepends = [
    catkin
    geometry_msgs
    joy
    roscpp
    roslaunch
    roslint
    rostest
    sensor_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    joy
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
