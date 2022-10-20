{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_dbw_interface";
  pkgFinal = final.rolling.swri_dbw_interface;
  src = srcs.marti_common.swri_dbw_interface;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
