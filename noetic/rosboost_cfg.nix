{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosboost_cfg";
  pkgFinal = final.noetic.rosboost_cfg;
  src = srcs.ros.rosboost_cfg;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
