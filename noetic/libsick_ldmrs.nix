{
  catkin,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libsick_ldmrs";
  pkgFinal = final.noetic.libsick_ldmrs;
  src = srcs.libsick_ldmrs.libsick_ldmrs;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
    catkin
  ];

  colconTestDepends = [
  ];
}
