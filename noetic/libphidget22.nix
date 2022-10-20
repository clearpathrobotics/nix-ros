{
  catkin,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libphidget22";
  pkgFinal = final.noetic.libphidget22;
  src = srcs.phidgets_drivers.libphidget22;

  colconBuildDepends = [
    catkin
    libusb1
  ];

  colconRunDepends = [
    libusb1
  ];

  colconTestDepends = [
  ];
}
