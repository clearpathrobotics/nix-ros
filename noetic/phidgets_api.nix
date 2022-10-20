{
  catkin,
  libphidget22,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_api";
  pkgFinal = final.noetic.phidgets_api;
  src = srcs.phidgets_drivers.phidgets_api;

  colconBuildDepends = [
    catkin
    libphidget22
  ];

  colconRunDepends = [
    libphidget22
  ];

  colconTestDepends = [
  ];
}
