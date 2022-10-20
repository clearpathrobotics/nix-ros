{
  catkin,
  cob_msgs,
  cob_utilities,
  control_msgs,
  diagnostic_msgs,
  diagnostic_updater,
  geometry_msgs,
  nav_msgs,
  roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_undercarriage_ctrl";
  pkgFinal = final.noetic.cob_undercarriage_ctrl;
  src = srcs.cob_driver.cob_undercarriage_ctrl;

  colconBuildDepends = [
    catkin
    cob_msgs
    cob_utilities
    control_msgs
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconRunDepends = [
    cob_msgs
    cob_utilities
    control_msgs
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
