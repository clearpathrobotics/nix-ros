{
  catkin,
  leo_msgs,
  libyamlcpp,
  nav_msgs,
  python3Packages,
  roscpp,
  rosgraph,
  rosmon_msgs,
  rosnode,
  rospy,
  rosservice,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_fw";
  pkgFinal = final.noetic.leo_fw;
  src = srcs.leo_robot.leo_fw;

  colconBuildDepends = [
    catkin
    leo_msgs
    libyamlcpp
    nav_msgs
    python3Packages.setuptools
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    leo_msgs
    libyamlcpp
    nav_msgs
    python3Packages.numpy
    python3Packages.rospkg
    python3Packages.whichcraft
    roscpp
    rosgraph
    rosmon_msgs
    rosnode
    rospy
    rosservice
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
