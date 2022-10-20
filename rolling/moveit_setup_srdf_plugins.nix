{
  ament_clang_format,
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  moveit_resources_fanuc_description,
  moveit_setup_framework,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_srdf_plugins";
  pkgFinal = final.rolling.moveit_setup_srdf_plugins;
  src = srcs.moveit.moveit_setup_srdf_plugins;

  colconBuildDepends = [
    ament_cmake
    moveit_setup_framework
    pluginlib
  ];

  colconRunDepends = [
    moveit_setup_framework
    pluginlib
  ];

  colconTestDepends = [
    ament_clang_format
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
    moveit_resources_fanuc_description
  ];
}
