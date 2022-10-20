{
  ament_cmake_ros,
  ecl_command_line,
  ecl_concepts,
  ecl_containers,
  ecl_converters,
  ecl_core_apps,
  ecl_devices,
  ecl_eigen,
  ecl_exceptions,
  ecl_formatters,
  ecl_geometry,
  ecl_ipc,
  ecl_linear_algebra,
  ecl_math,
  ecl_mpl,
  ecl_sigslots,
  ecl_statistics,
  ecl_streams,
  ecl_threads,
  ecl_time,
  ecl_type_traits,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_core";
  pkgFinal = final.rolling.ecl_core;
  src = srcs.ecl_core.ecl_core;

  colconBuildDepends = [
    ament_cmake_ros
  ];

  colconRunDepends = [
    ecl_command_line
    ecl_concepts
    ecl_containers
    ecl_converters
    ecl_core_apps
    ecl_devices
    ecl_eigen
    ecl_exceptions
    ecl_formatters
    ecl_geometry
    ecl_ipc
    ecl_linear_algebra
    ecl_math
    ecl_mpl
    ecl_sigslots
    ecl_statistics
    ecl_streams
    ecl_threads
    ecl_time
    ecl_type_traits
    ecl_utilities
  ];

  colconTestDepends = [
  ];
}
