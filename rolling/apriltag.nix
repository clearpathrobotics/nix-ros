{
  cmake,
  opencv,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "apriltag";
  pkgFinal = final.rolling.apriltag;
  src = srcs.apriltag.apriltag;

  colconBuildDepends = [
    cmake
    python3Packages.numpy
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    opencv
  ];
}
