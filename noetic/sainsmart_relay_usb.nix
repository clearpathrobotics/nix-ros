{
  catkin,
  libftdi,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sainsmart_relay_usb";
  pkgFinal = final.noetic.sainsmart_relay_usb;
  src = srcs.sainsmart_relay_usb.sainsmart_relay_usb;

  colconBuildDepends = [
    catkin
    libftdi
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    libftdi
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
