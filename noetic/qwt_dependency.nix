{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qwt_dependency";
  pkgFinal = final.noetic.qwt_dependency;
  src = srcs.qwt_dependency.qwt_dependency;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
