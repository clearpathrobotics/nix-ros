{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_building_map_msgs";
  pkgFinal = final.rolling.rmf_building_map_msgs;
  src = srcs.rmf_building_map_msgs.rmf_building_map_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
