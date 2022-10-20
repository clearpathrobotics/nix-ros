{
  catkin,
  gtest,
  roscpp,
  rosserial_client,
  rosserial_msgs,
  rosserial_python,
  rosserial_server,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_test";
  pkgFinal = final.noetic.rosserial_test;
  src = srcs.rosserial.rosserial_test;

  colconBuildDepends = [
    catkin
    gtest
    roscpp
    rosserial_client
    rosserial_msgs
    rosserial_python
    rosserial_server
    rostest
    std_msgs
  ];

  colconRunDepends = [
    gtest
    roscpp
    rosserial_client
    rosserial_msgs
    rosserial_python
    rosserial_server
    rostest
    std_msgs
  ];

  colconTestDepends = [
  ];
}
