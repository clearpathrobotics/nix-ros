{
  catkin,
  ecl_build,
  ecl_concepts,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_time,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_threads";
  pkgFinal = final.noetic.ecl_threads;
  src = srcs.ecl_core.ecl_threads;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_build
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_utilities
  ];

  colconTestDepends = [
  ];
}
