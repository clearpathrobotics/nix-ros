{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eg_random_generator";
  pkgFinal = final.rolling.eg_random_generator;
  src = srcs.SMACC2.eg_random_generator;

  colconBuildDepends = [
    ament_cmake
    smacc2
  ];

  colconRunDepends = [
    smacc2
  ];

  colconTestDepends = [
  ];
}
