{
  catkin,
  libyamlcpp,
  roscpp,
  roslib,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sr_hand_detector";
  pkgFinal = final.noetic.sr_hand_detector;
  src = srcs.sr_hand_detector.sr_hand_detector;

  colconBuildDepends = [
    catkin
    libyamlcpp
    roscpp
    roslib
  ];

  colconRunDepends = [
    libyamlcpp
    roscpp
    roslib
  ];

  colconTestDepends = [
    rostest
  ];
}
