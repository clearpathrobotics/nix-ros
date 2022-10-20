{
  cmake,
  osrf_testing_tools_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_osrf_testing_tools_cpp";
  pkgFinal = final.rolling.test_osrf_testing_tools_cpp;
  src = srcs.osrf_testing_tools_cpp.test_osrf_testing_tools_cpp;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    osrf_testing_tools_cpp
  ];
}
