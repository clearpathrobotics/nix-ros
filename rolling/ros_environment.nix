{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_environment";
  pkgFinal = final.rolling.ros_environment;
  src = srcs.ros_environment.ros_environment;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
