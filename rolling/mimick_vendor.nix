{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mimick_vendor";
  pkgFinal = final.rolling.mimick_vendor;
  src = srcs.mimick_vendor.mimick_vendor;

  colconBuildDepends = [
    ament_cmake
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
