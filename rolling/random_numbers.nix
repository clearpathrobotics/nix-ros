{
  ament_cmake,
  ament_cmake_copyright,
  ament_lint_auto,
  ament_lint_cmake,
  boost,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "random_numbers";
  pkgFinal = final.rolling.random_numbers;
  src = srcs.random_numbers.random_numbers;

  colconBuildDepends = [
    ament_cmake
    boost
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_lint_auto
    ament_lint_cmake
  ];
}
