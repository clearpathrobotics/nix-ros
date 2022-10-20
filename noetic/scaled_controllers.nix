{
  catkin,
  scaled_joint_trajectory_controller,
  speed_scaling_interface,
  speed_scaling_state_controller,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "scaled_controllers";
  pkgFinal = final.noetic.scaled_controllers;
  src = srcs.scaled_controllers.scaled_controllers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    scaled_joint_trajectory_controller
    speed_scaling_interface
    speed_scaling_state_controller
  ];

  colconTestDepends = [
  ];
}
