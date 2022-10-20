{
  actionlib,
  catkin,
  rospy,
  rosservice,
  rostopic,
  sensor_msgs,
  teleop_tools_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy_teleop";
  pkgFinal = final.noetic.joy_teleop;
  src = srcs.teleop_tools.joy_teleop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    rospy
    rosservice
    rostopic
    sensor_msgs
    teleop_tools_msgs
  ];

  colconTestDepends = [
  ];
}
