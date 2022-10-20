{
  catkin,
  kdl_parser,
  robot_state_publisher,
  roscpp,
  rosunit,
  tf,
  visualization_msgs,
  xpp_msgs,
  xpp_states,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xpp_vis";
  pkgFinal = final.noetic.xpp_vis;
  src = srcs.xpp.xpp_vis;

  colconBuildDepends = [
    catkin
    kdl_parser
    robot_state_publisher
    roscpp
    tf
    visualization_msgs
    xpp_msgs
    xpp_states
  ];

  colconRunDepends = [
    kdl_parser
    robot_state_publisher
    roscpp
    tf
    visualization_msgs
    xpp_msgs
    xpp_states
  ];

  colconTestDepends = [
    rosunit
  ];
}
