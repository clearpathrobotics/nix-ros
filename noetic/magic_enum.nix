{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "magic_enum";
  pkgFinal = final.noetic.magic_enum;
  src = srcs.magic_enum.magic_enum;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
