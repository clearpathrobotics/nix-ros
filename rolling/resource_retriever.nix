{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_index_cpp,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  libcurl_vendor,
  python3Packages,
  python_cmake_module,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "resource_retriever";
  pkgFinal = final.rolling.resource_retriever;
  src = srcs.resource_retriever.resource_retriever;

  colconBuildDepends = [
    ament_cmake_ros
    ament_index_cpp
    ament_index_python
    libcurl_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    ament_index_python
    libcurl_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    python3Packages.pytest
    python_cmake_module
  ];
}
