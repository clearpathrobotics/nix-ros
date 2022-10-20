{
  catkin,
  ecl_build,
  ecl_errors,
  ecl_formatters,
  ecl_geometry,
  ecl_license,
  ecl_linear_algebra,
  ecl_math,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_mobile_robot";
  pkgFinal = final.noetic.ecl_mobile_robot;
  src = srcs.ecl_navigation.ecl_mobile_robot;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_errors
    ecl_formatters
    ecl_geometry
    ecl_license
    ecl_linear_algebra
    ecl_math
  ];

  colconRunDepends = [
    ecl_build
    ecl_errors
    ecl_formatters
    ecl_geometry
    ecl_license
    ecl_linear_algebra
    ecl_math
  ];

  colconTestDepends = [
  ];
}
