{
  boost,
  catkin,
  class_loader,
  rosunit,
  socketcan_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "canopen_master";
  pkgFinal = final.noetic.canopen_master;
  src = srcs.ros_canopen.canopen_master;

  colconBuildDepends = [
    boost
    catkin
    class_loader
    socketcan_interface
  ];

  colconRunDepends = [
    boost
    class_loader
    socketcan_interface
  ];

  colconTestDepends = [
    rosunit
  ];
}
