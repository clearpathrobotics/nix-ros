{
  actionlib,
  catkin,
  cob_sound,
  cob_srvs,
  control_msgs,
  geometry_msgs,
  move_base_msgs,
  python3Packages,
  rospy,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "scenario_test_tools";
  pkgFinal = final.noetic.scenario_test_tools;
  src = srcs.cob_command_tools.scenario_test_tools;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    actionlib
    move_base_msgs
    rospy
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
    cob_sound
    cob_srvs
    control_msgs
    geometry_msgs
  ];
}
