{
  boost,
  catkin,
  cpp_common,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xmlrpcpp";
  pkgFinal = final.noetic.xmlrpcpp;
  src = srcs.ros_comm.xmlrpcpp;

  colconBuildDepends = [
    catkin
    cpp_common
    rostime
  ];

  colconRunDepends = [
    cpp_common
    rostime
  ];

  colconTestDepends = [
    boost
  ];
}
