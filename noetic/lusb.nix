{
  boost,
  catkin,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lusb";
  pkgFinal = final.noetic.lusb;
  src = srcs.lusb.lusb;

  colconBuildDepends = [
    boost
    catkin
    libusb1
  ];

  colconRunDepends = [
    boost
    libusb1
  ];

  colconTestDepends = [
  ];
}
