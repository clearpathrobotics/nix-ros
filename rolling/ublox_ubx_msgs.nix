{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_ubx_msgs";
  pkgFinal = final.rolling.ublox_ubx_msgs;
  src = srcs.ublox_dgnss.ublox_ubx_msgs;

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
    ament_lint_auto
    ament_lint_common
  ];
}
