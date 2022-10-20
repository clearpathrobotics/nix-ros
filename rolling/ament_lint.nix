{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_lint";
  pkgFinal = final.rolling.ament_lint;
  src = srcs.ament_lint.ament_lint;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
