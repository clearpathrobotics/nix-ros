{
  cmake,
  iceoryx_hoofs,
  iceoryx_posh,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "iceoryx_binding_c";
  pkgFinal = final.rolling.iceoryx_binding_c;
  src = srcs.iceoryx.iceoryx_binding_c;

  colconBuildDepends = [
    cmake
    iceoryx_hoofs
    iceoryx_posh
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
