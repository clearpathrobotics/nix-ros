{
  boost,
  catkin,
  class_loader,
  console-bridge,
  linuxHeaders,
  rosunit,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "socketcan_interface";
  pkgFinal = final.noetic.socketcan_interface;
  src = srcs.ros_canopen.socketcan_interface;

  colconBuildDepends = [
    boost
    catkin
    class_loader
    console-bridge
    linuxHeaders
  ];

  colconRunDepends = [
    boost
    class_loader
    console-bridge
    linuxHeaders
  ];

  colconTestDepends = [
    rosunit
    xmlrpcpp
  ];
}
