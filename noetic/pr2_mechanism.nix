{
  catkin,
  pr2_controller_interface,
  pr2_controller_manager,
  pr2_hardware_interface,
  pr2_mechanism_diagnostics,
  pr2_mechanism_model,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mechanism";
  pkgFinal = final.noetic.pr2_mechanism;
  src = srcs.pr2_mechanism.pr2_mechanism;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_controller_interface
    pr2_controller_manager
    pr2_hardware_interface
    pr2_mechanism_diagnostics
    pr2_mechanism_model
  ];

  colconTestDepends = [
  ];
}
