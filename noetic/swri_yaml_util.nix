{
  boost,
  catkin,
  libyamlcpp,
  pkg-config,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_yaml_util";
  pkgFinal = final.noetic.swri_yaml_util;
  src = srcs.marti_common.swri_yaml_util;

  colconBuildDepends = [
    boost
    catkin
    libyamlcpp
    pkg-config
    roscpp
  ];

  colconRunDepends = [
    boost
    libyamlcpp
    roscpp
  ];

  colconTestDepends = [
  ];
}
