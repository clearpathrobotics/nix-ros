{
  catkin,
  joy_teleop,
  key_teleop,
  mouse_teleop,
  teleop_tools_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_tools";
  pkgFinal = final.noetic.teleop_tools;
  src = srcs.teleop_tools.teleop_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joy_teleop
    key_teleop
    mouse_teleop
    teleop_tools_msgs
  ];

  colconTestDepends = [
  ];
}
