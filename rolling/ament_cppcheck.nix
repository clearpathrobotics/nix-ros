{
  cppcheck,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cppcheck";
  pkgFinal = final.rolling.ament_cppcheck;
  src = srcs.ament_lint.ament_cppcheck;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    cppcheck
  ];

  colconTestDepends = [
  ];
}
