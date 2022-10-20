{
  catkin,
  diagnostic_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosdiagnostic";
  pkgFinal = final.noetic.rosdiagnostic;
  src = srcs.diagnostics.rosdiagnostic;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
