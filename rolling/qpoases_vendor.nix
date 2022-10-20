{
  ament_cmake_auto,
  subversion,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qpoases_vendor";
  pkgFinal = final.rolling.qpoases_vendor;
  src = srcs.qpoases_vendor.qpoases_vendor;

  colconBuildDepends = [
    ament_cmake_auto
    subversion
  ];

  colconRunDepends = [
    subversion
  ];

  colconTestDepends = [
  ];
}
