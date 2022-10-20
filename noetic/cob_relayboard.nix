{
  catkin,
  cob_msgs,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_relayboard";
  pkgFinal = final.noetic.cob_relayboard;
  src = srcs.cob_driver.cob_relayboard;

  colconBuildDepends = [
    catkin
    cob_msgs
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    cob_msgs
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
