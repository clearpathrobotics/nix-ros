{
  catkin,
  diagnostic_updater,
  geometry_msgs,
  roscpp,
  rospy,
  rostest,
  rostopic,
  std_msgs,
  twist_mux_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_mux";
  pkgFinal = final.noetic.twist_mux;
  src = srcs.twist_mux.twist_mux;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    geometry_msgs
    roscpp
    rostest
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    geometry_msgs
    roscpp
    std_msgs
    twist_mux_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    rospy
    rostopic
  ];
}
