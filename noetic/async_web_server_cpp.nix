{
  boost,
  catkin,
  openssl,
  python3Packages,
  roslib,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "async_web_server_cpp";
  pkgFinal = final.noetic.async_web_server_cpp;
  src = srcs.async_web_server_cpp.async_web_server_cpp;

  colconBuildDepends = [
    boost
    catkin
    openssl
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
    python3Packages.websocket-client
    roslib
    rospy
    rostest
  ];
}
