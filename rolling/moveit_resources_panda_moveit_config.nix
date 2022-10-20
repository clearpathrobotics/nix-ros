{
  ament_cmake,
  joint_state_publisher,
  joint_state_publisher_gui,
  moveit_resources_panda_description,
  robot_state_publisher,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_panda_moveit_config";
  pkgFinal = final.rolling.moveit_resources_panda_moveit_config;
  src = srcs.moveit_resources.moveit_resources_panda_moveit_config;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    moveit_resources_panda_description
    robot_state_publisher
    xacro
  ];

  colconTestDepends = [
  ];
}
