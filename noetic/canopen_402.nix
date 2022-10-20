{
  boost,
  canopen_master,
  catkin,
  class_loader,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "canopen_402";
  pkgFinal = final.noetic.canopen_402;
  src = srcs.ros_canopen.canopen_402;

  colconBuildDepends = [
    boost
    canopen_master
    catkin
    class_loader
  ];

  colconRunDepends = [
    boost
    canopen_master
    class_loader
  ];

  colconTestDepends = [
    rosunit
  ];
}
