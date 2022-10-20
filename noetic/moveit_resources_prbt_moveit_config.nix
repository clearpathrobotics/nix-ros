{
  catkin,
  joint_state_publisher,
  moveit_resources_prbt_ikfast_manipulator_plugin,
  moveit_resources_prbt_support,
  robot_state_publisher,
  rviz,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_moveit_config";
  pkgFinal = final.noetic.moveit_resources_prbt_moveit_config;
  src = srcs.moveit_resources.moveit_resources_prbt_moveit_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    moveit_resources_prbt_ikfast_manipulator_plugin
    moveit_resources_prbt_support
    robot_state_publisher
    rviz
    xacro
  ];

  colconTestDepends = [
  ];
}
