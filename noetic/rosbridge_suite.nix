{
  catkin,
  rosapi,
  rosbridge_library,
  rosbridge_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_suite";
  pkgFinal = final.noetic.rosbridge_suite;
  src = srcs.rosbridge_suite.rosbridge_suite;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosapi
    rosbridge_library
    rosbridge_server
  ];

  colconTestDepends = [
  ];
}
