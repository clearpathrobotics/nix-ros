{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "LibQi";
  pkgFinal = final.noetic.LibQi;
  src = srcs.naoqi_libqi.LibQi;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
