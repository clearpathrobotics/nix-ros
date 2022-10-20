{
  catkin,
  diagnostic_updater,
  geometry_msgs,
  kdl_parser,
  message_runtime,
  nav_msgs,
  p2os_msgs,
  roscpp,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "p2os_driver";
  pkgFinal = final.noetic.p2os_driver;
  src = srcs.p2os.p2os_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    geometry_msgs
    kdl_parser
    nav_msgs
    p2os_msgs
    roscpp
    std_msgs
    tf
  ];

  colconRunDepends = [
    diagnostic_updater
    geometry_msgs
    kdl_parser
    message_runtime
    nav_msgs
    p2os_msgs
    roscpp
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
