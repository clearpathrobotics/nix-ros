{
  catkin,
  cob_msgs,
  cob_phidgets,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_phidget_em_state";
  pkgFinal = final.noetic.cob_phidget_em_state;
  src = srcs.cob_driver.cob_phidget_em_state;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_msgs
    cob_phidgets
    rospy
  ];

  colconTestDepends = [
  ];
}
