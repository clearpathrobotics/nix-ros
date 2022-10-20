{
  angles,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  pr2_mechanism_model,
  pr2_mechanism_msgs,
  roscpp,
  rospy,
  rostest,
  std_msgs,
  std_srvs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mechanism_diagnostics";
  pkgFinal = final.noetic.pr2_mechanism_diagnostics;
  src = srcs.pr2_mechanism.pr2_mechanism_diagnostics;

  colconBuildDepends = [
    angles
    catkin
    diagnostic_msgs
    diagnostic_updater
    pr2_mechanism_model
    pr2_mechanism_msgs
    roscpp
    rostest
    std_msgs
    std_srvs
    urdf
  ];

  colconRunDepends = [
    angles
    diagnostic_msgs
    diagnostic_updater
    pr2_mechanism_model
    pr2_mechanism_msgs
    roscpp
    rospy
    std_msgs
    std_srvs
    urdf
  ];

  colconTestDepends = [
  ];
}
