{
  cmake,
  gtest,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "catkin";
  pkgFinal = final.noetic.catkin;
  src = srcs.catkin.catkin;

  colconBuildDepends = [
    cmake
    python3Packages.catkin-pkg
    python3Packages.empy
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cmake
    gtest
    python3Packages.catkin-pkg
    python3Packages.empy
    python3Packages.nose
    python3Packages.setuptools
  ];

  colconTestDepends = [
    python3Packages.mock
    python3Packages.nose
  ];
}
