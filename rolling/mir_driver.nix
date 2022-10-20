{
  actionlib_msgs,
  diagnostic_msgs,
  geometry_msgs,
  mir_actions,
  mir_description,
  mir_msgs,
  nav_msgs,
  python3Packages,
  robot_state_publisher,
  rosgraph_msgs,
  sensor_msgs,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_driver";
  pkgFinal = final.rolling.mir_driver;
  src = srcs.mir_robot.mir_driver;

  colconBuildDepends = [
    actionlib_msgs
    diagnostic_msgs
    geometry_msgs
    mir_actions
    mir_msgs
    nav_msgs
    python3Packages.websocket-client
    rosgraph_msgs
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    diagnostic_msgs
    geometry_msgs
    mir_actions
    mir_description
    mir_msgs
    nav_msgs
    python3Packages.websocket-client
    robot_state_publisher
    rosgraph_msgs
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
