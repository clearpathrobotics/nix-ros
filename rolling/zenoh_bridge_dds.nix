{
  ament_cmake,
  cargo,
  clang,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "zenoh_bridge_dds";
  pkgFinal = final.rolling.zenoh_bridge_dds;
  src = srcs.zenoh_bridge_dds.zenoh_bridge_dds;

  colconBuildDepends = [
    ament_cmake
    cargo
    clang
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
