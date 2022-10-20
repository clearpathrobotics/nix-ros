{
  catkin,
  dataspeed_can_msg_filters,
  dataspeed_can_tools,
  dataspeed_can_usb,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_can";
  pkgFinal = final.noetic.dataspeed_can;
  src = srcs.dataspeed_can.dataspeed_can;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dataspeed_can_msg_filters
    dataspeed_can_tools
    dataspeed_can_usb
  ];

  colconTestDepends = [
  ];
}
