{
  catkin,
  ecl_config,
  ecl_containers,
  ecl_errors,
  ecl_license,
  ecl_mpl,
  ecl_threads,
  ecl_type_traits,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_devices";
  pkgFinal = final.noetic.ecl_devices;
  src = srcs.ecl_core.ecl_devices;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_containers
    ecl_errors
    ecl_license
    ecl_mpl
    ecl_threads
    ecl_type_traits
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_config
    ecl_containers
    ecl_errors
    ecl_license
    ecl_mpl
    ecl_threads
    ecl_type_traits
    ecl_utilities
  ];

  colconTestDepends = [
  ];
}
