{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libfranka";
  pkgFinal = final.noetic.libfranka;
  src = srcs.libfranka.libfranka;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
