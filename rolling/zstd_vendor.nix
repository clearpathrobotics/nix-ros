{
  ament_cmake,
  git,
  zstd,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "zstd_vendor";
  pkgFinal = final.rolling.zstd_vendor;
  src = srcs.rosbag2.zstd_vendor;

  colconBuildDepends = [
    ament_cmake
    git
    zstd
  ];

  colconRunDepends = [
    zstd
  ];

  colconTestDepends = [
  ];
}
