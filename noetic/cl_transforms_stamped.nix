{
  catkin,
  cl_transforms,
  geometry_msgs,
  roslisp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cl_transforms_stamped";
  pkgFinal = final.noetic.cl_transforms_stamped;
  src = srcs.roslisp_common.cl_transforms_stamped;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cl_transforms
    geometry_msgs
    roslisp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
