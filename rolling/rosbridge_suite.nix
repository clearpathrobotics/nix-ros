{
  ament_cmake_core,
  rosapi,
  rosbridge_library,
  rosbridge_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_suite";
  pkgFinal = final.rolling.rosbridge_suite;
  src = srcs.rosbridge_suite.rosbridge_suite;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    rosapi
    rosbridge_library
    rosbridge_server
  ];

  colconTestDepends = [
  ];
}
