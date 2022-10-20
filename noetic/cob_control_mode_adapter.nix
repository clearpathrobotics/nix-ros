{
  boost,
  catkin,
  controller_manager_msgs,
  roscpp,
  roslint,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_control_mode_adapter";
  pkgFinal = final.noetic.cob_control_mode_adapter;
  src = srcs.cob_control.cob_control_mode_adapter;

  colconBuildDepends = [
    boost
    catkin
    controller_manager_msgs
    roscpp
    roslint
    std_msgs
  ];

  colconRunDepends = [
    boost
    controller_manager_msgs
    roscpp
    roslint
    std_msgs
  ];

  colconTestDepends = [
  ];
}
