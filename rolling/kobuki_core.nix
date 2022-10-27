{
  ament_cmake_ros,
  ecl_build,
  ecl_command_line,
  ecl_config,
  ecl_console,
  ecl_converters,
  ecl_devices,
  ecl_geometry,
  ecl_mobile_robot,
  ecl_sigslots,
  ecl_threads,
  ecl_time,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_core";
  pkgFinal = final.rolling.kobuki_core;
  src = srcs.kobuki_core.kobuki_core;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_command_line
    ecl_config
    ecl_console
    ecl_converters
    ecl_devices
    ecl_geometry
    ecl_mobile_robot
    ecl_sigslots
    ecl_threads
    ecl_time
  ];

  colconRunDepends = [
    ecl_command_line
    ecl_config
    ecl_console
    ecl_converters
    ecl_devices
    ecl_geometry
    ecl_mobile_robot
    ecl_sigslots
    ecl_threads
    ecl_time
  ];

  colconTestDepends = [
  ];
}
