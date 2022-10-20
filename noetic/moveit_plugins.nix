{
  catkin,
  moveit_fake_controller_manager,
  moveit_ros_control_interface,
  moveit_simple_controller_manager,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_plugins";
  pkgFinal = final.noetic.moveit_plugins;
  src = srcs.moveit.moveit_plugins;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_fake_controller_manager
    moveit_ros_control_interface
    moveit_simple_controller_manager
  ];

  colconTestDepends = [
  ];
}
