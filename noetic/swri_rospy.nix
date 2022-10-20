{
  catkin,
  python3Packages,
  rospy,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_rospy";
  pkgFinal = final.noetic.swri_rospy;
  src = srcs.marti_common.swri_rospy;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    rospy
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
