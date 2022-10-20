{
  can_msgs,
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "can_dbc_parser";
  pkgFinal = final.noetic.can_dbc_parser;
  src = srcs.raptor-dbw-ros.can_dbc_parser;

  colconBuildDepends = [
    can_msgs
    catkin
    roscpp
  ];

  colconRunDepends = [
    can_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
