{
  can_dbc_parser,
  can_msgs,
  catkin,
  pdu_msgs,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pdu";
  pkgFinal = final.noetic.pdu;
  src = srcs.raptor-dbw-ros.pdu;

  colconBuildDepends = [
    can_dbc_parser
    can_msgs
    catkin
    pdu_msgs
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    can_dbc_parser
    can_msgs
    pdu_msgs
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
