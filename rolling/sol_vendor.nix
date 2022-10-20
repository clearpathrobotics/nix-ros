{
  ament_cmake,
  ament_lint_auto,
  git,
  ouxt_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sol_vendor";
  pkgFinal = final.rolling.sol_vendor;
  src = srcs.sol_vendor.sol_vendor;

  colconBuildDepends = [
    ament_cmake
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ouxt_lint_common
  ];
}
