{
  ament_cmake,
  joint_state_publisher,
  moveit_resources_fanuc_description,
  robot_state_publisher,
  tf2_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_fanuc_moveit_config";
  pkgFinal = final.rolling.moveit_resources_fanuc_moveit_config;
  src = srcs.moveit_resources.moveit_resources_fanuc_moveit_config;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    joint_state_publisher
    moveit_resources_fanuc_description
    robot_state_publisher
    tf2_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
