{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_msgs";
  pkgFinal = final.rolling.gazebo_msgs;
  src = srcs.gazebo_ros_pkgs.gazebo_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
