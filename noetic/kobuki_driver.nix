{
  catkin,
  ecl_build,
  ecl_command_line,
  ecl_console,
  ecl_converters,
  ecl_devices,
  ecl_geometry,
  ecl_mobile_robot,
  ecl_sigslots,
  ecl_time,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_driver";
  pkgFinal = final.noetic.kobuki_driver;
  src = srcs.kobuki_core.kobuki_driver;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_command_line
    ecl_console
    ecl_converters
    ecl_devices
    ecl_geometry
    ecl_mobile_robot
    ecl_sigslots
    ecl_time
  ];

  colconRunDepends = [
    ecl_command_line
    ecl_console
    ecl_converters
    ecl_devices
    ecl_geometry
    ecl_mobile_robot
    ecl_sigslots
    ecl_time
  ];

  colconTestDepends = [
  ];
}
