{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_acceleration";
  pkgFinal = final.rolling.ament_acceleration;
  src = srcs.ament_acceleration.ament_acceleration;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
