{
  actionlib,
  catkin,
  controller_manager_msgs,
  moveit_core,
  moveit_simple_controller_manager,
  pluginlib,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_control_interface";
  pkgFinal = final.noetic.moveit_ros_control_interface;
  src = srcs.moveit.moveit_ros_control_interface;

  colconBuildDepends = [
    actionlib
    catkin
    controller_manager_msgs
    moveit_core
    moveit_simple_controller_manager
    pluginlib
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    controller_manager_msgs
    moveit_core
    moveit_simple_controller_manager
    pluginlib
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
