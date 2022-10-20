{
  catkin,
  qb_hand_control,
  qb_hand_description,
  qb_hand_gazebo,
  qb_hand_hardware_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_hand";
  pkgFinal = final.noetic.qb_hand;
  src = srcs.qb_hand.qb_hand;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    qb_hand_control
    qb_hand_description
    qb_hand_gazebo
    qb_hand_hardware_interface
  ];

  colconTestDepends = [
  ];
}
