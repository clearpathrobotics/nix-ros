{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "crlibm";
  pkgFinal = final.noetic.crlibm;
  src = srcs.jsk_3rdparty.crlibm;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
