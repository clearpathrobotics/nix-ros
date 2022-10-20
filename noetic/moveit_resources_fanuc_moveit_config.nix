{
  catkin,
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
  pkgFinal = final.noetic.moveit_resources_fanuc_moveit_config;
  src = srcs.moveit_resources.moveit_resources_fanuc_moveit_config;

  colconBuildDepends = [
    catkin
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
