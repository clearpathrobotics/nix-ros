{
  catkin,
  cl_transforms,
  cl_transforms_stamped,
  roslisp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_tf";
  pkgFinal = final.noetic.cl_tf;
  src = srcs.roslisp_common.cl_tf;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cl_transforms
    cl_transforms_stamped
    roslisp
    tf
  ];

  colconTestDepends = [
  ];
}
