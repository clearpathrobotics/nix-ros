{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  builtin_interfaces,
  console-bridge,
  console_bridge_vendor,
  geometry_msgs,
  rcutils,
  rosidl_runtime_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2";
  pkgFinal = final.rolling.tf2;
  src = srcs.geometry2.tf2;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    console-bridge
    console_bridge_vendor
    geometry_msgs
    rcutils
    rosidl_runtime_cpp
  ];

  colconRunDepends = [
    builtin_interfaces
    console-bridge
    console_bridge_vendor
    geometry_msgs
    rcutils
    rosidl_runtime_cpp
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
  ];
}
