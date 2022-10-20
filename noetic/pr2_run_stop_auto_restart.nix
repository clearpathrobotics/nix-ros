{
  catkin,
  pr2_msgs,
  pr2_power_board,
  roscpp,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_run_stop_auto_restart";
  pkgFinal = final.noetic.pr2_run_stop_auto_restart;
  src = srcs.pr2_robot.pr2_run_stop_auto_restart;

  colconBuildDepends = [
    catkin
    pr2_msgs
    pr2_power_board
    roscpp
    std_srvs
  ];

  colconRunDepends = [
    pr2_msgs
    pr2_power_board
    roscpp
    std_srvs
  ];

  colconTestDepends = [
  ];
}
