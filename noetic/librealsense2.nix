{
  catkin,
  libusb1,
  openssl,
  pkg-config,
  udev,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "librealsense2";
  pkgFinal = final.noetic.librealsense2;
  src = srcs.librealsense2.librealsense2;

  colconBuildDepends = [
    catkin
    libusb1
    openssl
    pkg-config
    udev
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
