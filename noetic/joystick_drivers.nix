{
  catkin,
  joy,
  spacenav_node,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joystick_drivers";
  pkgFinal = final.noetic.joystick_drivers;
  src = srcs.joystick_drivers.joystick_drivers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joy
    spacenav_node
  ];

  colconTestDepends = [
  ];
}
