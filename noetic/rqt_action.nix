{
  catkin,
  rospy,
  rqt_msg,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_action";
  pkgFinal = final.noetic.rqt_action;
  src = srcs.rqt_action.rqt_action;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    rqt_msg
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
