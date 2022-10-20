{
  boost,
  catkin,
  rosconsole,
  roscpp,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "message_filters";
  pkgFinal = final.noetic.message_filters;
  src = srcs.ros_comm.message_filters;

  colconBuildDepends = [
    boost
    catkin
    rosconsole
    roscpp
    rostest
    rosunit
  ];

  colconRunDepends = [
    boost
    rosconsole
    roscpp
  ];

  colconTestDepends = [
  ];
}
