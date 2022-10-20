{
  ament_cmake,
  ecl_build,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_tools";
  pkgFinal = final.rolling.ecl_tools;
  src = srcs.ecl_tools.ecl_tools;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ecl_build
    ecl_license
  ];

  colconTestDepends = [
  ];
}
