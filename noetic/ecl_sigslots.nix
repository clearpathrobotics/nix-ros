{
  catkin,
  ecl_config,
  ecl_license,
  ecl_threads,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_sigslots";
  pkgFinal = final.noetic.ecl_sigslots;
  src = srcs.ecl_core.ecl_sigslots;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_license
    ecl_threads
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
    ecl_threads
  ];

  colconTestDepends = [
  ];
}
