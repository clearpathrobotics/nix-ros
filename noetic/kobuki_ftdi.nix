{
  catkin,
  ecl_command_line,
  libftdi,
  libusb1,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_ftdi";
  pkgFinal = final.noetic.kobuki_ftdi;
  src = srcs.kobuki_core.kobuki_ftdi;

  colconBuildDepends = [
    catkin
    ecl_command_line
    libftdi
    libusb1
    pkg-config
  ];

  colconRunDepends = [
    ecl_command_line
    libftdi
    libusb1
  ];

  colconTestDepends = [
  ];
}
