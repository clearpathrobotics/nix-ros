{
  catkin,
  ecl_concepts,
  ecl_converters,
  ecl_devices,
  ecl_errors,
  ecl_license,
  ecl_time,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_streams";
  pkgFinal = final.noetic.ecl_streams;
  src = srcs.ecl_core.ecl_streams;

  colconBuildDepends = [
    catkin
    ecl_concepts
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_license
    ecl_time
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_license
    ecl_time
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
