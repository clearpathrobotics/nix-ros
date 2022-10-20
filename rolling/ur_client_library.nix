{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_client_library";
  pkgFinal = final.rolling.ur_client_library;
  src = srcs.ur_client_library.ur_client_library;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
