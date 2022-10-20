{
  allocators,
  catkin,
  lockfree,
  rosatomic,
  rosrt,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_realtime";
  pkgFinal = final.noetic.ros_realtime;
  src = srcs.ros_realtime.ros_realtime;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    allocators
    lockfree
    rosatomic
    rosrt
  ];

  colconTestDepends = [
  ];
}
