{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jderobot_assets";
  pkgFinal = final.noetic.jderobot_assets;
  src = srcs.jderobot_assets.jderobot_assets;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
