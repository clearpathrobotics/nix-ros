{
  catkin,
  dbw_mkz_can,
  dbw_mkz_description,
  dbw_mkz_joystick_demo,
  dbw_mkz_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_mkz";
  pkgFinal = final.noetic.dbw_mkz;
  src = srcs.dbw_mkz_ros.dbw_mkz;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dbw_mkz_can
    dbw_mkz_description
    dbw_mkz_joystick_demo
    dbw_mkz_msgs
  ];

  colconTestDepends = [
  ];
}
