{
  catkin,
  cob_msgs,
  cob_phidgets,
  dynamic_reconfigure,
  python3Packages,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_voltage_control";
  pkgFinal = final.noetic.cob_voltage_control;
  src = srcs.cob_driver.cob_voltage_control;

  colconBuildDepends = [
    catkin
    cob_msgs
    cob_phidgets
    dynamic_reconfigure
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    cob_msgs
    cob_phidgets
    dynamic_reconfigure
    python3Packages.matplotlib
    python3Packages.tkinter
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
