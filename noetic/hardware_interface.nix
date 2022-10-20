{
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hardware_interface";
  pkgFinal = final.noetic.hardware_interface;
  src = srcs.ros_control.hardware_interface;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
  ];
}
