{
  cacert,
  cmake,
  cv_bridge,
  git,
  openssl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libcmt";
  pkgFinal = final.noetic.libcmt;
  src = srcs.jsk_3rdparty.libcmt;

  colconBuildDepends = [
    cacert
    cmake
    cv_bridge
    git
    openssl
  ];

  colconRunDepends = [
    cv_bridge
  ];

  colconTestDepends = [
  ];
}
