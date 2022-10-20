{
  catkin,
  diagnostic_msgs,
  rosbag,
  roslib,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_analysis";
  pkgFinal = final.noetic.diagnostic_analysis;
  src = srcs.diagnostics.diagnostic_analysis;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    rosbag
    roslib
    rostest
  ];

  colconRunDepends = [
    diagnostic_msgs
    rosbag
    roslib
  ];

  colconTestDepends = [
  ];
}
