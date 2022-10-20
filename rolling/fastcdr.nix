{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fastcdr";
  pkgFinal = final.rolling.fastcdr;
  src = srcs.fastcdr.fastcdr;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
