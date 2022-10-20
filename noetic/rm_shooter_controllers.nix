{
  catkin,
  controller_interface,
  dynamic_reconfigure,
  effort_controllers,
  rm_common,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_shooter_controllers";
  pkgFinal = final.noetic.rm_shooter_controllers;
  src = srcs.rm_controllers.rm_shooter_controllers;

  colconBuildDepends = [
    catkin
    controller_interface
    dynamic_reconfigure
    effort_controllers
    rm_common
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    dynamic_reconfigure
    effort_controllers
    rm_common
    roscpp
  ];

  colconTestDepends = [
  ];
}
