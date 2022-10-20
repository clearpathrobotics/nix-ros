{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pyquaternion";
  pkgFinal = final.noetic.pyquaternion;
  src = srcs.pyquaternion.pyquaternion;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
