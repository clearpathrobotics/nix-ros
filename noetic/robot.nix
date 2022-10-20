{
  catkin,
  control_msgs,
  diagnostics,
  executive_smach,
  filters,
  geometry,
  joint_state_publisher,
  kdl_parser,
  robot_state_publisher,
  ros_base,
  urdf,
  urdf_parser_plugin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot";
  pkgFinal = final.noetic.robot;
  src = srcs.metapackages.robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    control_msgs
    diagnostics
    executive_smach
    filters
    geometry
    joint_state_publisher
    kdl_parser
    robot_state_publisher
    ros_base
    urdf
    urdf_parser_plugin
    xacro
  ];

  colconTestDepends = [
  ];
}
