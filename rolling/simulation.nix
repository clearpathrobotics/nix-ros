{
  ament_cmake,
  ros_base,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simulation";
  pkgFinal = final.rolling.simulation;
  src = srcs.variants.simulation;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ros_base
  ];

  colconTestDepends = [
  ];
}
