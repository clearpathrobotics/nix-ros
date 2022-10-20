{
  cmake,
  cunit,
  iceoryx_binding_c,
  iceoryx_hoofs,
  iceoryx_posh,
  openssl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cyclonedds";
  pkgFinal = final.rolling.cyclonedds;
  src = srcs.cyclonedds.cyclonedds;

  colconBuildDepends = [
    cmake
    iceoryx_binding_c
    iceoryx_hoofs
    iceoryx_posh
    openssl
  ];

  colconRunDepends = [
    iceoryx_binding_c
    iceoryx_hoofs
    iceoryx_posh
    openssl
  ];

  colconTestDepends = [
    cunit
  ];
}
