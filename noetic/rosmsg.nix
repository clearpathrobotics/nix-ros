{
  catkin,
  diagnostic_msgs,
  genmsg,
  genpy,
  python3Packages,
  rosbag,
  roslib,
  rostest,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmsg";
  pkgFinal = final.noetic.rosmsg;
  src = srcs.ros_comm.rosmsg;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    catkin
    genmsg
    genpy
    python3Packages.rospkg
    rosbag
    roslib
  ];

  colconTestDepends = [
    diagnostic_msgs
    rostest
    std_msgs
    std_srvs
  ];
}
