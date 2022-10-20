{
  action_msgs,
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  autoware_auto_geometry_msgs,
  autoware_auto_mapping_msgs,
  builtin_interfaces,
  geometry_msgs,
  nav_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_auto_planning_msgs";
  pkgFinal = final.rolling.autoware_auto_planning_msgs;
  src = srcs.autoware_auto_msgs.autoware_auto_planning_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake_auto
    autoware_auto_geometry_msgs
    autoware_auto_mapping_msgs
    builtin_interfaces
    geometry_msgs
    nav_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    action_msgs
    autoware_auto_geometry_msgs
    autoware_auto_mapping_msgs
    builtin_interfaces
    geometry_msgs
    nav_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
