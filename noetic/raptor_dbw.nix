{
  can_dbc_parser,
  catkin,
  pdu,
  pdu_msgs,
  raptor_dbw_can,
  raptor_dbw_joystick_demo,
  raptor_dbw_joystick_speed_demo,
  raptor_dbw_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "raptor_dbw";
  pkgFinal = final.noetic.raptor_dbw;
  src = srcs.raptor-dbw-ros.raptor_dbw;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    can_dbc_parser
    pdu
    pdu_msgs
    raptor_dbw_can
    raptor_dbw_joystick_demo
    raptor_dbw_joystick_speed_demo
    raptor_dbw_msgs
  ];

  colconTestDepends = [
  ];
}
