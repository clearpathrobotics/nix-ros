{
  catkin,
  geometry_msgs,
  hardware_interface,
  roscpp,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartesian_interface";
  pkgFinal = final.noetic.cartesian_interface;
  src = srcs.ros_controllers_cartesian.cartesian_interface;

  colconBuildDepends = [
    catkin
    geometry_msgs
    hardware_interface
    roscpp
  ];

  colconRunDepends = [
    geometry_msgs
    hardware_interface
    roscpp
  ];

  colconTestDepends = [
    rosunit
  ];
}
