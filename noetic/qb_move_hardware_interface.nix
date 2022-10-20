{
  catkin,
  control_toolbox,
  hardware_interface,
  interactive_markers,
  qb_device_hardware_interface,
  roscpp,
  tf2,
  tf2_geometry_msgs,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_move_hardware_interface";
  pkgFinal = final.noetic.qb_move_hardware_interface;
  src = srcs.qb_move.qb_move_hardware_interface;

  colconBuildDepends = [
    catkin
    control_toolbox
    hardware_interface
    interactive_markers
    qb_device_hardware_interface
    roscpp
    tf2
    tf2_geometry_msgs
    transmission_interface
  ];

  colconRunDepends = [
    control_toolbox
    hardware_interface
    interactive_markers
    qb_device_hardware_interface
    roscpp
    tf2
    tf2_geometry_msgs
    transmission_interface
  ];

  colconTestDepends = [
  ];
}
