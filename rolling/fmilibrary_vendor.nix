{
  ament_cmake,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fmilibrary_vendor";
  pkgFinal = final.rolling.fmilibrary_vendor;
  src = srcs.fmilibrary_vendor.fmilibrary_vendor;

  colconBuildDepends = [
    ament_cmake
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
