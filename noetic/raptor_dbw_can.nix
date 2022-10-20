{
  can_dbc_parser,
  can_msgs,
  catkin,
  geometry_msgs,
  nodelet,
  pdu_msgs,
  raptor_dbw_msgs,
  roscpp,
  roslaunch,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "raptor_dbw_can";
  pkgFinal = final.noetic.raptor_dbw_can;
  src = srcs.raptor-dbw-ros.raptor_dbw_can;

  colconBuildDepends = [
    can_dbc_parser
    can_msgs
    catkin
    geometry_msgs
    nodelet
    pdu_msgs
    raptor_dbw_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    can_dbc_parser
    can_msgs
    geometry_msgs
    nodelet
    pdu_msgs
    raptor_dbw_msgs
    roscpp
    roslaunch
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
