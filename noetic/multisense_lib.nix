{
  catkin,
  cv_bridge,
  libpng,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense_lib";
  pkgFinal = final.noetic.multisense_lib;
  src = srcs.multisense_ros.multisense_lib;

  colconBuildDepends = [
    catkin
    cv_bridge
    libpng
  ];

  colconRunDepends = [
    cv_bridge
    libpng
  ];

  colconTestDepends = [
  ];
}
