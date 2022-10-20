{
  catkin,
  ecl_build,
  ecl_converters,
  ecl_eigen,
  ecl_exceptions,
  ecl_formatters,
  ecl_license,
  ecl_math,
  sophus,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_linear_algebra";
  pkgFinal = final.noetic.ecl_linear_algebra;
  src = srcs.ecl_core.ecl_linear_algebra;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_converters
    ecl_eigen
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_math
    sophus
  ];

  colconRunDepends = [
    ecl_build
    ecl_converters
    ecl_eigen
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_math
    sophus
  ];

  colconTestDepends = [
  ];
}
