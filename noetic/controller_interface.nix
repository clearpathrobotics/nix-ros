{
  catkin,
  hardware_interface,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_interface";
  pkgFinal = final.noetic.controller_interface;
  src = srcs.ros_control.controller_interface;

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
