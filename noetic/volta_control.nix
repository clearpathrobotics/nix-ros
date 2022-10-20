{
  catkin,
  controller_manager,
  diff_drive_controller,
  joint_state_controller,
  twist_mux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_control";
  pkgFinal = final.noetic.volta_control;
  src = srcs.volta.volta_control;

  colconBuildDepends = [
    catkin
    controller_manager
    diff_drive_controller
    joint_state_controller
    twist_mux
  ];

  colconRunDepends = [
    controller_manager
    diff_drive_controller
    joint_state_controller
    twist_mux
  ];

  colconTestDepends = [
  ];
}
