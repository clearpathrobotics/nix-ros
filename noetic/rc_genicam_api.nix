{
  cmake,
  libpng,
  libusb1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_genicam_api";
  pkgFinal = final.noetic.rc_genicam_api;
  src = srcs.rc_genicam_api.rc_genicam_api;

  colconBuildDepends = [
    cmake
    libpng
    libusb1
  ];

  colconRunDepends = [
    libpng
    libusb1
  ];

  colconTestDepends = [
  ];
}
