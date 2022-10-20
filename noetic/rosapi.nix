{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rosbridge_library,
  rosgraph,
  rosnode,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosapi";
  pkgFinal = final.noetic.rosapi;
  src = srcs.rosbridge_suite.rosapi;

  colconBuildDepends = [
    catkin
    message_generation
    python3Packages.setuptools
  ];

  colconRunDepends = [
    message_runtime
    rosbridge_library
    rosgraph
    rosnode
    rospy
  ];

  colconTestDepends = [
  ];
}
