{
  cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ifopt";
  pkgFinal = final.noetic.ifopt;
  src = srcs.ifopt.ifopt;

  colconBuildDepends = [
    cmake
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
