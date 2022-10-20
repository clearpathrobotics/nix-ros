{
  action_msgs,
  ament_cmake,
  ament_lint_common,
  diagnostic_msgs,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "py_trees_ros_interfaces";
  pkgFinal = final.rolling.py_trees_ros_interfaces;
  src = srcs.py_trees_ros_interfaces.py_trees_ros_interfaces;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    diagnostic_msgs
    geometry_msgs
    rosidl_default_generators
    unique_identifier_msgs
  ];

  colconRunDepends = [
    action_msgs
    diagnostic_msgs
    geometry_msgs
    rosidl_default_runtime
    unique_identifier_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
