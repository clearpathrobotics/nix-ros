{
  catkin,
  locomotor,
  move_base_msgs,
  nav_2d_utils,
  nav_core,
  nav_core_adapter,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "locomove_base";
  pkgFinal = final.noetic.locomove_base;
  src = srcs.robot_navigation.locomove_base;

  colconBuildDepends = [
    catkin
    locomotor
    move_base_msgs
    nav_2d_utils
    nav_core
    nav_core_adapter
  ];

  colconRunDepends = [
    locomotor
    move_base_msgs
    nav_2d_utils
    nav_core
    nav_core_adapter
  ];

  colconTestDepends = [
    roslint
  ];
}
