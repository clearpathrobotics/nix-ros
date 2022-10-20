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
  name = "osqp_vendor";
  pkgFinal = final.rolling.osqp_vendor;
  src = srcs.osqp_vendor.osqp_vendor;

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
