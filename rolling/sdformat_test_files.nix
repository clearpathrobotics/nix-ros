{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sdformat_test_files";
  pkgFinal = final.rolling.sdformat_test_files;
  src = srcs.sdformat_urdf.sdformat_test_files;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
    cmake
  ];

  colconTestDepends = [
  ];
}
