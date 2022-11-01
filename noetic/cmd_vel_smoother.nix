{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cmd_vel_smoother";
  pkgFinal = final.noetic.cmd_vel_smoother;
  src = srcs.jsk_control.cmd_vel_smoother;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    roscpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
