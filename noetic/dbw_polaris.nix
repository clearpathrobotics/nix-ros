{
  catkin,
  dbw_polaris_can,
  dbw_polaris_description,
  dbw_polaris_joystick_demo,
  dbw_polaris_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_polaris";
  pkgFinal = final.noetic.dbw_polaris;
  src = srcs.dbw_polaris_ros.dbw_polaris;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dbw_polaris_can
    dbw_polaris_description
    dbw_polaris_joystick_demo
    dbw_polaris_msgs
  ];

  colconTestDepends = [
  ];
}
