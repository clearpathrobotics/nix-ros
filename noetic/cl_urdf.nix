{
  catkin,
  cl_transforms,
  roslisp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_urdf";
  pkgFinal = final.noetic.cl_urdf;
  src = srcs.roslisp_common.cl_urdf;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cl_transforms
    roslisp
  ];

  colconTestDepends = [
  ];
}
