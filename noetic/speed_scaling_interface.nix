{
  catkin,
  hardware_interface,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "speed_scaling_interface";
  pkgFinal = final.noetic.speed_scaling_interface;
  src = srcs.scaled_controllers.speed_scaling_interface;

  colconBuildDepends = [
    catkin
    hardware_interface
    roscpp
  ];

  colconRunDepends = [
    hardware_interface
    roscpp
  ];

  colconTestDepends = [
  ];
}
