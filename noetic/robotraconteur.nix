{
  bluez,
  boost,
  catkin,
  dbus,
  libusb1,
  openssl,
  python3,
  python3Packages,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robotraconteur";
  pkgFinal = final.noetic.robotraconteur;
  src = srcs.robotraconteur.robotraconteur;

  colconBuildDepends = [
    bluez
    boost
    catkin
    dbus
    libusb1
    openssl
    python3
    python3Packages.numpy
    zlib
  ];

  colconRunDepends = [
    bluez
    boost
    dbus
    libusb1
    openssl
    python3
    python3Packages.numpy
    zlib
  ];

  colconTestDepends = [
  ];
}
