{
  cacert,
  cmake,
  cmake_modules,
  git,
  opencv,
  openssl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slic";
  pkgFinal = final.noetic.slic;
  src = srcs.jsk_3rdparty.slic;

  colconBuildDepends = [
    cacert
    cmake
    cmake_modules
    git
    opencv
    openssl
  ];

  colconRunDepends = [
    opencv
  ];

  colconTestDepends = [
  ];
}
