{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_dbw_interface";
  pkgFinal = final.noetic.swri_dbw_interface;
  src = srcs.marti_common.swri_dbw_interface;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
