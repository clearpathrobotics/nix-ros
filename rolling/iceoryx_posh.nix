{
  cmake,
  git,
  iceoryx_hoofs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "iceoryx_posh";
  pkgFinal = final.rolling.iceoryx_posh;
  src = srcs.iceoryx.iceoryx_posh;

  colconBuildDepends = [
    cmake
    git
    iceoryx_hoofs
  ];

  colconRunDepends = [
    iceoryx_hoofs
  ];

  colconTestDepends = [
  ];
}
