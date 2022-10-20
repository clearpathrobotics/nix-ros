{
  catkin,
  sbcl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_utils";
  pkgFinal = final.noetic.cl_utils;
  src = srcs.roslisp_common.cl_utils;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    sbcl
  ];

  colconTestDepends = [
  ];
}
