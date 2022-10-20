{
  cppcheck,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "VRPN";
  pkgFinal = final.noetic.VRPN;
  src = srcs.vrpn.VRPN;

  colconBuildDepends = [
    cppcheck
    libusb1
  ];

  colconRunDepends = [
    cppcheck
    libusb1
  ];

  colconTestDepends = [
  ];
}
