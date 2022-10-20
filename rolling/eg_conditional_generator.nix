{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eg_conditional_generator";
  pkgFinal = final.rolling.eg_conditional_generator;
  src = srcs.SMACC2.eg_conditional_generator;

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
