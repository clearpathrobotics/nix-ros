{
  catkin,
  roslisp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslisp_utilities";
  pkgFinal = final.noetic.roslisp_utilities;
  src = srcs.roslisp_common.roslisp_utilities;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    roslisp
  ];

  colconTestDepends = [
  ];
}
