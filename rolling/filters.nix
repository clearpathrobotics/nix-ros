{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gtest,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  boost,
  pluginlib,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "filters";
  pkgFinal = final.rolling.filters;
  src = srcs.filters.filters;

  colconBuildDepends = [
    ament_cmake
    boost
    pluginlib
    rclcpp
  ];

  colconRunDepends = [
    boost
    pluginlib
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gtest
    ament_cmake_uncrustify
    ament_cmake_xmllint
  ];
}
