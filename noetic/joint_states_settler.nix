{
  actionlib,
  actionlib_msgs,
  catkin,
  rosconsole,
  roscpp,
  roscpp_serialization,
  settlerlib,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_states_settler";
  pkgFinal = final.noetic.joint_states_settler;
  src = srcs.calibration.joint_states_settler;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    rosconsole
    roscpp
    roscpp_serialization
    settlerlib
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    rosconsole
    roscpp
    roscpp_serialization
    settlerlib
    std_msgs
  ];

  colconTestDepends = [
  ];
}
