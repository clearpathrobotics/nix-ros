{
  actionlib_msgs,
  catkin,
  cl_utils,
  message_runtime,
  roslisp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "actionlib_lisp";
  pkgFinal = final.noetic.actionlib_lisp;
  src = srcs.roslisp_common.actionlib_lisp;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib_msgs
    cl_utils
    message_runtime
    roslisp
  ];

  colconTestDepends = [
  ];
}
