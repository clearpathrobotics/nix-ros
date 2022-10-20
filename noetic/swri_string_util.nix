{
  catkin,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_string_util";
  pkgFinal = final.noetic.swri_string_util;
  src = srcs.marti_common.swri_string_util;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rostest
  ];
}
