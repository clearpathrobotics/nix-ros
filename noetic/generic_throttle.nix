{
  catkin,
  cv_bridge,
  python3Packages,
  rospy,
  rostopic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "generic_throttle";
  pkgFinal = final.noetic.generic_throttle;
  src = srcs.cob_command_tools.generic_throttle;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cv_bridge
    rospy
    rostopic
  ];

  colconTestDepends = [
  ];
}
