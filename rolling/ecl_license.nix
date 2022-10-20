{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_license";
  pkgFinal = final.rolling.ecl_license;
  src = srcs.ecl_tools.ecl_license;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
