{
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "osrf_testing_tools_cpp";
  pkgFinal = final.rolling.osrf_testing_tools_cpp;
  src = srcs.osrf_testing_tools_cpp.osrf_testing_tools_cpp;

  colconBuildDepends = [
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
