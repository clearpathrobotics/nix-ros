{
  catkin,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_command_line";
  pkgFinal = final.noetic.ecl_command_line;
  src = srcs.ecl_core.ecl_command_line;

  colconBuildDepends = [
    catkin
    ecl_license
  ];

  colconRunDepends = [
    ecl_license
  ];

  colconTestDepends = [
  ];
}
