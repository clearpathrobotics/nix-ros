{
  ament_cmake,
  joint_state_publisher,
  moveit_resources_prbt_ikfast_manipulator_plugin,
  moveit_resources_prbt_support,
  moveit_ros_move_group,
  robot_state_publisher,
  rviz2,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_moveit_config";
  pkgFinal = final.rolling.moveit_resources_prbt_moveit_config;
  src = srcs.moveit.moveit_resources_prbt_moveit_config;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joint_state_publisher
    moveit_resources_prbt_ikfast_manipulator_plugin
    moveit_resources_prbt_support
    moveit_ros_move_group
    robot_state_publisher
    rviz2
    xacro
  ];

  colconTestDepends = [
  ];
}
