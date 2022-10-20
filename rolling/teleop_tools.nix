{
  ament_cmake,
  joy_teleop,
  key_teleop,
  teleop_tools_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_tools";
  pkgFinal = final.rolling.teleop_tools;
  src = srcs.teleop_tools.teleop_tools;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joy_teleop
    key_teleop
    teleop_tools_msgs
  ];

  colconTestDepends = [
  ];
}
