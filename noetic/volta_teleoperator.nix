{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  sensor_msgs,
  teleop_twist_joy,
  teleop_twist_keyboard,
  volta_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_teleoperator";
  pkgFinal = final.noetic.volta_teleoperator;
  src = srcs.volta.volta_teleoperator;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    sensor_msgs
    teleop_twist_joy
    teleop_twist_keyboard
    volta_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    sensor_msgs
    teleop_twist_joy
    teleop_twist_keyboard
    volta_msgs
  ];

  colconTestDepends = [
  ];
}
