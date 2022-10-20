{
  acl,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "iceoryx_hoofs";
  pkgFinal = final.rolling.iceoryx_hoofs;
  src = srcs.iceoryx.iceoryx_hoofs;

  colconBuildDepends = [
    acl
    cmake
  ];

  colconRunDepends = [
    acl
  ];

  colconTestDepends = [
  ];
}
