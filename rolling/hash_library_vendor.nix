{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hash_library_vendor";
  pkgFinal = final.rolling.hash_library_vendor;
  src = srcs.hash_library_vendor.hash_library_vendor;

  colconBuildDepends = [
    ament_cmake_auto
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
