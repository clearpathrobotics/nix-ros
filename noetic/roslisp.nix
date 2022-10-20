{
  catkin,
  ros_environment,
  rosgraph_msgs,
  roslang,
  rospack,
  sbcl,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslisp";
  pkgFinal = final.noetic.roslisp;
  src = srcs.roslisp.roslisp;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ros_environment
    rosgraph_msgs
    roslang
    rospack
    sbcl
    std_srvs
  ];

  colconTestDepends = [
  ];
}
