{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geographic_msgs,
  geometry_msgs,
  rcl_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavros_msgs";
  pkgFinal = final.rolling.mavros_msgs;
  src = srcs.mavros.mavros_msgs;

  colconBuildDepends = [
    ament_cmake
    geographic_msgs
    geometry_msgs
    rcl_interfaces
    rosidl_default_generators
    sensor_msgs
  ];

  colconRunDepends = [
    geographic_msgs
    geometry_msgs
    rcl_interfaces
    rosidl_default_runtime
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
