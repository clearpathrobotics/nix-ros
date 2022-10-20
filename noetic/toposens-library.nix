{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens-library";
  pkgFinal = final.noetic.toposens-library;
  src = srcs.toposens-library.toposens-library;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
