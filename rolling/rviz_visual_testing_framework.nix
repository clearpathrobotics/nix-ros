{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_lint_auto,
  qt5,
  rcutils,
  rviz_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_visual_testing_framework";
  pkgFinal = final.rolling.rviz_visual_testing_framework;
  src = srcs.rviz.rviz_visual_testing_framework;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_gtest
    qt5.qtbase
    rcutils
    rviz_common
  ];

  colconRunDepends = [
    ament_cmake_gtest
    rcutils
    rviz_common
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gmock
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
