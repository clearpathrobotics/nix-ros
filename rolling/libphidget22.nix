{
  ament_cmake,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libphidget22";
  pkgFinal = final.rolling.libphidget22;
  src = srcs.phidgets_drivers.libphidget22;

  colconBuildDepends = [
    ament_cmake
    libusb1
  ];

  colconRunDepends = [
    libusb1
  ];

  colconTestDepends = [
  ];
}
