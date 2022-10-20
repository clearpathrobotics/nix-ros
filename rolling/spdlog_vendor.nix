{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  spdlog,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "spdlog_vendor";
  pkgFinal = final.rolling.spdlog_vendor;
  src = srcs.spdlog_vendor.spdlog_vendor;

  colconBuildDepends = [
    ament_cmake
    spdlog
  ];

  colconRunDepends = [
    spdlog
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
