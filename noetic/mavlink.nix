{
  cmake,
  python3,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavlink";
  pkgFinal = final.noetic.mavlink;
  src = srcs.mavlink.mavlink;

  colconBuildDepends = [
    cmake
    python3
    python3Packages.future
    python3Packages.lxml
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
