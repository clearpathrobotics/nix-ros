{
  catkin,
  dbw_fca_can,
  dbw_fca_description,
  dbw_fca_joystick_demo,
  dbw_fca_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_fca";
  pkgFinal = final.noetic.dbw_fca;
  src = srcs.dbw_fca_ros.dbw_fca;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dbw_fca_can
    dbw_fca_description
    dbw_fca_joystick_demo
    dbw_fca_msgs
  ];

  colconTestDepends = [
  ];
}
