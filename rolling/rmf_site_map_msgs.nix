{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_site_map_msgs";
  pkgFinal = final.rolling.rmf_site_map_msgs;
  src = srcs.rmf_internal_msgs.rmf_site_map_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
