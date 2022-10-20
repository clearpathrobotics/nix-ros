{
  actionlib,
  catkin,
  cob_srvs,
  control_msgs,
  dynamic_reconfigure,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_trajectory_controller";
  pkgFinal = final.noetic.cob_trajectory_controller;
  src = srcs.cob_control.cob_trajectory_controller;

  colconBuildDepends = [
    actionlib
    catkin
    cob_srvs
    control_msgs
    dynamic_reconfigure
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    cob_srvs
    control_msgs
    dynamic_reconfigure
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
