{
  boost,
  catkin,
  cmake_modules,
  geometry_msgs,
  kdl_parser,
  roscpp,
  roslint,
  rospy,
  sensor_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_model_identifier";
  pkgFinal = final.noetic.cob_model_identifier;
  src = srcs.cob_control.cob_model_identifier;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    geometry_msgs
    kdl_parser
    roscpp
    roslint
    sensor_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    boost
    cmake_modules
    geometry_msgs
    kdl_parser
    roscpp
    roslint
    rospy
    sensor_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
