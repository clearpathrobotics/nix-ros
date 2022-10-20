{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_cmake,
  boost,
  console-bridge,
  console_bridge_vendor,
  tinyxml2_vendor,
  urdf,
  urdfdom_headers,
  urdfdom_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "srdfdom";
  pkgFinal = final.rolling.srdfdom;
  src = srcs.srdfdom.srdfdom;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    boost
    console-bridge
    console_bridge_vendor
    tinyxml2_vendor
    urdf
    urdfdom_headers
  ];

  colconRunDepends = [
    console-bridge
    console_bridge_vendor
    tinyxml2_vendor
    urdf
    urdfdom_py
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_cmake
  ];
}
