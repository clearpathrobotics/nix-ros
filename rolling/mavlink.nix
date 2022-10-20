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
  pkgFinal = final.rolling.mavlink;
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
