{
  catkin,
  controller_interface,
  pr2_mechanism_model,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controller_interface";
  pkgFinal = final.noetic.pr2_controller_interface;
  src = srcs.pr2_mechanism.pr2_controller_interface;

  colconBuildDepends = [
    catkin
    controller_interface
    pr2_mechanism_model
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    pr2_mechanism_model
    roscpp
  ];

  colconTestDepends = [
  ];
}
