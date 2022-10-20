{
  ament_cmake,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_prefix_tools";
  pkgFinal = final.rolling.swri_prefix_tools;
  src = srcs.marti_common.swri_prefix_tools;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    python3Packages.psutil
  ];

  colconTestDepends = [
  ];
}
