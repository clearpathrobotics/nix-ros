{
  ament_cmake,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_build";
  pkgFinal = final.rolling.ecl_build;
  src = srcs.ecl_tools.ecl_build;

  colconBuildDepends = [
    ament_cmake
    ecl_license
  ];

  colconRunDepends = [
    ecl_license
  ];

  colconTestDepends = [
  ];
}
