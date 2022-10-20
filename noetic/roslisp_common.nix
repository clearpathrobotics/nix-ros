{
  actionlib_lisp,
  catkin,
  cl_tf,
  cl_tf2,
  cl_transforms,
  cl_transforms_stamped,
  cl_urdf,
  cl_utils,
  roslisp_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslisp_common";
  pkgFinal = final.noetic.roslisp_common;
  src = srcs.roslisp_common.roslisp_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib_lisp
    cl_tf
    cl_tf2
    cl_transforms
    cl_transforms_stamped
    cl_urdf
    cl_utils
    roslisp_utilities
  ];

  colconTestDepends = [
  ];
}
