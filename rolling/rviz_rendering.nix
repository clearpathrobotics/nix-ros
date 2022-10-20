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
  eigen,
  eigen3_cmake_module,
  qt5,
  resource_retriever,
  rviz_assimp_vendor,
  rviz_ogre_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_rendering";
  pkgFinal = final.rolling.rviz_rendering;
  src = srcs.rviz.rviz_rendering;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    eigen
    eigen3_cmake_module
    qt5.qtbase
    resource_retriever
    rviz_assimp_vendor
    rviz_ogre_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    eigen
    eigen3_cmake_module
    qt5.qtbase
    resource_retriever
    rviz_assimp_vendor
    rviz_ogre_vendor
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
    rviz_assimp_vendor
  ];
}
