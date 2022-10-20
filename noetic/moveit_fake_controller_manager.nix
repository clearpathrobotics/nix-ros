{
  catkin,
  moveit_core,
  moveit_ros_planning,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_fake_controller_manager";
  pkgFinal = final.noetic.moveit_fake_controller_manager;
  src = srcs.moveit.moveit_fake_controller_manager;

  colconBuildDepends = [
    catkin
    moveit_core
    moveit_ros_planning
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    moveit_core
    moveit_ros_planning
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
