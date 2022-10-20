{
  ament_cmake,
  ament_lint_auto,
  ament_lint_cmake,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "graph_msgs";
  pkgFinal = final.rolling.graph_msgs;
  src = srcs.graph_msgs.graph_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_cmake
  ];
}
