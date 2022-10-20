{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  asio,
  console-bridge,
  mavlink,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libmavconn";
  pkgFinal = final.rolling.libmavconn;
  src = srcs.mavros.libmavconn;

  colconBuildDepends = [
    ament_cmake
    asio
    console-bridge
    mavlink
    python3Packages.empy
  ];

  colconRunDepends = [
    asio
    console-bridge
    mavlink
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
