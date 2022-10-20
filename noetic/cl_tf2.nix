{
  actionlib_lisp,
  catkin,
  cl_transforms_stamped,
  cl_utils,
  roslisp,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_tf2";
  pkgFinal = final.noetic.cl_tf2;
  src = srcs.roslisp_common.cl_tf2;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib_lisp
    cl_transforms_stamped
    cl_utils
    roslisp
    tf2_msgs
  ];

  colconTestDepends = [
  ];
}
