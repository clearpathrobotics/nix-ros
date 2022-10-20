{
  catkin,
  gst_all_1,
  nettools,
  networkmanager,
  pkg-config,
  procps,
  unixtools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clpe";
  pkgFinal = final.noetic.clpe;
  src = srcs.clpe_sdk.clpe;

  colconBuildDepends = [
    catkin
    gst_all_1.gst-plugins-base
    nettools
    networkmanager
    pkg-config
    procps
    unixtools.ping
  ];

  colconRunDepends = [
    gst_all_1.gst-plugins-base
    nettools
    networkmanager
    procps
    unixtools.ping
  ];

  colconTestDepends = [
  ];
}
