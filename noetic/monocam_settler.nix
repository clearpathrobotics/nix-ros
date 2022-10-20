{
  actionlib,
  actionlib_msgs,
  catkin,
  rosconsole,
  roscpp_serialization,
  settlerlib,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "monocam_settler";
  pkgFinal = final.noetic.monocam_settler;
  src = srcs.calibration.monocam_settler;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    rosconsole
    roscpp_serialization
    settlerlib
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    rosconsole
    roscpp_serialization
    settlerlib
    std_msgs
  ];

  colconTestDepends = [
  ];
}
