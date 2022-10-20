{
  catkin,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libphidgets";
  pkgFinal = final.noetic.libphidgets;
  src = srcs.cob_extern.libphidgets;

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
