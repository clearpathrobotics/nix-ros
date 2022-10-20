{
  ament_cmake_ros,
  libphidget22,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_api";
  pkgFinal = final.rolling.phidgets_api;
  src = srcs.phidgets_drivers.phidgets_api;

  colconBuildDepends = [
    ament_cmake_ros
    libphidget22
  ];

  colconRunDepends = [
    libphidget22
  ];

  colconTestDepends = [
  ];
}
