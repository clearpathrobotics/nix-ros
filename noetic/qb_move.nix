{
  catkin,
  qb_move_control,
  qb_move_description,
  qb_move_gazebo,
  qb_move_hardware_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_move";
  pkgFinal = final.noetic.qb_move;
  src = srcs.qb_move.qb_move;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    qb_move_control
    qb_move_description
    qb_move_gazebo
    qb_move_hardware_interface
  ];

  colconTestDepends = [
  ];
}
