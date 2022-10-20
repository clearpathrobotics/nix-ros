{
  catkin,
  joint_state_publisher,
  moveit_resources_fanuc_description,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_description,
  moveit_resources_panda_moveit_config,
  moveit_resources_pr2_description,
  robot_state_publisher,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources";
  pkgFinal = final.noetic.moveit_resources;
  src = srcs.moveit_resources.moveit_resources;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    moveit_resources_fanuc_description
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_description
    moveit_resources_panda_moveit_config
    moveit_resources_pr2_description
    robot_state_publisher
  ];

  colconTestDepends = [
  ];
}
