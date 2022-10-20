{
  boost,
  cmake,
  gtest,
  ros_industrial_cmake_boilerplate,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "boost_plugin_loader";
  pkgFinal = final.noetic.boost_plugin_loader;
  src = srcs.boost_plugin_loader.boost_plugin_loader;

  colconBuildDepends = [
    boost
    cmake
    ros_industrial_cmake_boilerplate
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
    gtest
  ];
}
