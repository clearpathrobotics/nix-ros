{
  catkin,
  controller_interface,
  effort_controllers,
  rm_common,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_calibration_controllers";
  pkgFinal = final.noetic.rm_calibration_controllers;
  src = srcs.rm_controllers.rm_calibration_controllers;

  colconBuildDepends = [
    catkin
    controller_interface
    effort_controllers
    rm_common
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    effort_controllers
    rm_common
    roscpp
  ];

  colconTestDepends = [
  ];
}
