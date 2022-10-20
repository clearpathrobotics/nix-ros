{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urg_node_msgs";
  pkgFinal = final.rolling.urg_node_msgs;
  src = srcs.urg_node_msgs.urg_node_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
