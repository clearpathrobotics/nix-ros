{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  dynamixel_sdk,
  eigen,
  eigen3_cmake_module,
  libyamlcpp,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rt_manipulators_cpp";
  pkgFinal = final.rolling.rt_manipulators_cpp;
  src = srcs.rt_manipulators_cpp.rt_manipulators_cpp;

  colconBuildDepends = [
    ament_cmake
    dynamixel_sdk
    eigen
    eigen3_cmake_module
    libyamlcpp
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    dynamixel_sdk
    eigen
    eigen3_cmake_module
    libyamlcpp
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
