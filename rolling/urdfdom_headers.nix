{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdfdom_headers";
  pkgFinal = final.rolling.urdfdom_headers;
  src = srcs.urdfdom_headers.urdfdom_headers;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
