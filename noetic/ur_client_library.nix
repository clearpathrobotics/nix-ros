{
  boost,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_client_library";
  pkgFinal = final.noetic.ur_client_library;
  src = srcs.ur_client_library.ur_client_library;

  colconBuildDepends = [
    boost
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
