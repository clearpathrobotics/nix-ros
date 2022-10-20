{
  catkin,
  python3Packages,
  rosapi,
  rosbridge_library,
  rosbridge_msgs,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_server";
  pkgFinal = final.noetic.rosbridge_server;
  src = srcs.rosbridge_suite.rosbridge_server;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.autobahn
    python3Packages.tornado
    python3Packages.twisted
    rosapi
    rosbridge_library
    rosbridge_msgs
    rospy
  ];

  colconTestDepends = [
    rostest
  ];
}
