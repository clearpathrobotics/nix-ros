{
  catkin,
  cl_utils,
  sbcl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_transforms";
  pkgFinal = final.noetic.cl_transforms;
  src = srcs.roslisp_common.cl_transforms;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cl_utils
    sbcl
  ];

  colconTestDepends = [
  ];
}
