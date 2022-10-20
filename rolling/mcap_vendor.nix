{
  ament_cmake,
  ament_cmake_clang_format,
  ament_lint_auto,
  ament_lint_common,
  git,
  zstd_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mcap_vendor";
  pkgFinal = final.rolling.mcap_vendor;
  src = srcs.rosbag2_storage_mcap.mcap_vendor;

  colconBuildDepends = [
    ament_cmake
    git
    zstd_vendor
  ];

  colconRunDepends = [
    zstd_vendor
  ];

  colconTestDepends = [
    ament_cmake_clang_format
    ament_lint_auto
    ament_lint_common
  ];
}
