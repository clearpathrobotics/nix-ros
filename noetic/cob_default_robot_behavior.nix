{
  catkin,
  cob_light,
  cob_script_server,
  python3Packages,
  rospy,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_default_robot_behavior";
  pkgFinal = final.noetic.cob_default_robot_behavior;
  src = srcs.cob_robots.cob_default_robot_behavior;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_light
    cob_script_server
    rospy
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
