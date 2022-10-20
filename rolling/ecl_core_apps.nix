{
  ament_cmake_ros,
  ecl_build,
  ecl_command_line,
  ecl_config,
  ecl_containers,
  ecl_converters,
  ecl_devices,
  ecl_errors,
  ecl_exceptions,
  ecl_formatters,
  ecl_geometry,
  ecl_ipc,
  ecl_license,
  ecl_linear_algebra,
  ecl_sigslots,
  ecl_streams,
  ecl_threads,
  ecl_time_lite,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_core_apps";
  pkgFinal = final.rolling.ecl_core_apps;
  src = srcs.ecl_core.ecl_core_apps;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_command_line
    ecl_config
    ecl_containers
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_geometry
    ecl_ipc
    ecl_license
    ecl_linear_algebra
    ecl_sigslots
    ecl_streams
    ecl_threads
    ecl_time_lite
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_build
    ecl_command_line
    ecl_config
    ecl_containers
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_geometry
    ecl_ipc
    ecl_license
    ecl_linear_algebra
    ecl_sigslots
    ecl_streams
    ecl_threads
    ecl_time_lite
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
