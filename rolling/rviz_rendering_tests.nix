{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  qt5,
  resource_retriever,
  rviz_rendering,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_rendering_tests";
  pkgFinal = final.rolling.rviz_rendering_tests;
  src = srcs.rviz.rviz_rendering_tests;

  colconBuildDepends = [
    ament_cmake
    qt5.qtbase
    resource_retriever
    rviz_rendering
  ];

  colconRunDepends = [
    resource_retriever
    rviz_rendering
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_index_cpp
    ament_lint_auto
  ];
}
