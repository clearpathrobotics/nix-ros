{
  allocators,
  catkin,
  rosatomic,
  rosconsole,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lockfree";
  pkgFinal = final.noetic.lockfree;
  src = srcs.ros_realtime.lockfree;

  colconBuildDepends = [
    allocators
    catkin
    rosatomic
    rosconsole
    roslib
  ];

  colconRunDepends = [
    allocators
    rosatomic
    rosconsole
    roslib
  ];

  colconTestDepends = [
  ];
}
