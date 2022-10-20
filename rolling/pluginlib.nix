{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  class_loader,
  rcpputils,
  rcutils,
  tinyxml2_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pluginlib";
  pkgFinal = final.rolling.pluginlib;
  src = srcs.pluginlib.pluginlib;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    class_loader
    rcpputils
    rcutils
    tinyxml2_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    class_loader
    rcpputils
    rcutils
    tinyxml2_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
