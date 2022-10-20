{
  can_msgs,
  catkin,
  rosbag,
  roscpp,
  roslib,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_can_tools";
  pkgFinal = final.noetic.dataspeed_can_tools;
  src = srcs.dataspeed_can.dataspeed_can_tools;

  colconBuildDepends = [
    can_msgs
    catkin
    rosbag
    roscpp
    roslib
    std_msgs
  ];

  colconRunDepends = [
    can_msgs
    rosbag
    roscpp
    roslib
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
