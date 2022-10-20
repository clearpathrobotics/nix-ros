{
  allocators,
  catkin,
  lockfree,
  rosatomic,
  roscpp,
  roslib,
  rostest,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosrt";
  pkgFinal = final.noetic.rosrt;
  src = srcs.ros_realtime.rosrt;

  colconBuildDepends = [
    allocators
    catkin
    lockfree
    rosatomic
    roscpp
    roslib
    rostest
    rosunit
    std_msgs
  ];

  colconRunDepends = [
    allocators
    lockfree
    rosatomic
    roscpp
    roslib
    rostest
    rosunit
    std_msgs
  ];

  colconTestDepends = [
  ];
}
