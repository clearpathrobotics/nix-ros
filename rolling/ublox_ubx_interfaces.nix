{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_ubx_interfaces";
  pkgFinal = final.rolling.ublox_ubx_interfaces;
  src = srcs.ublox_dgnss.ublox_ubx_interfaces;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_generators
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
