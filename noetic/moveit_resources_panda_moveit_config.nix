{
  catkin,
  joint_state_publisher,
  joint_state_publisher_gui,
  moveit_resources_panda_description,
  robot_state_publisher,
  rviz,
  tf2_ros,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_panda_moveit_config";
  pkgFinal = final.noetic.moveit_resources_panda_moveit_config;
  src = srcs.moveit_resources.moveit_resources_panda_moveit_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    moveit_resources_panda_description
    robot_state_publisher
    rviz
    tf2_ros
    xacro
  ];

  colconTestDepends = [
  ];
}
