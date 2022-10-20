{
  catkin,
  controller_interface,
  kdl_parser,
  realtime_tools,
  rm_common,
  roscpp,
  tf2_kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_state_controller";
  pkgFinal = final.noetic.robot_state_controller;
  src = srcs.rm_controllers.robot_state_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    kdl_parser
    realtime_tools
    rm_common
    roscpp
    tf2_kdl
  ];

  colconRunDepends = [
    controller_interface
    kdl_parser
    realtime_tools
    rm_common
    roscpp
    tf2_kdl
  ];

  colconTestDepends = [
  ];
}
