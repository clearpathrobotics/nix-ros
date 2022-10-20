{
  catkin,
  hardware_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_robot_status_interface";
  pkgFinal = final.noetic.industrial_robot_status_interface;
  src = srcs.industrial_robot_status_controller.industrial_robot_status_interface;

  colconBuildDepends = [
    catkin
    hardware_interface
  ];

  colconRunDepends = [
    hardware_interface
  ];

  colconTestDepends = [
  ];
}
