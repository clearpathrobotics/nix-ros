{
  boost,
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  nav_msgs,
  roscpp,
  roslint,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_base_velocity_smoother";
  pkgFinal = final.noetic.cob_base_velocity_smoother;
  src = srcs.cob_control.cob_base_velocity_smoother;

  colconBuildDepends = [
    boost
    catkin
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    roslint
    std_msgs
  ];

  colconRunDepends = [
    boost
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    roslint
    std_msgs
  ];

  colconTestDepends = [
  ];
}
