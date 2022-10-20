{
  boost,
  catch_ros,
  catkin,
  cmake_modules,
  diagnostic_msgs,
  libyamlcpp,
  ncurses,
  python3,
  python3Packages,
  rosbash,
  roscpp,
  rosfmt,
  roslib,
  rosmon_msgs,
  rospack,
  rostest,
  std_msgs,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmon_core";
  pkgFinal = final.noetic.rosmon_core;
  src = srcs.rosmon.rosmon_core;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    diagnostic_msgs
    libyamlcpp
    ncurses
    python3
    rosbash
    roscpp
    rosfmt
    roslib
    rosmon_msgs
    rospack
    std_msgs
    tinyxml
  ];

  colconRunDepends = [
    boost
    cmake_modules
    diagnostic_msgs
    libyamlcpp
    ncurses
    rosbash
    roscpp
    rosfmt
    roslib
    rosmon_msgs
    rospack
    std_msgs
    tinyxml
  ];

  colconTestDepends = [
    catch_ros
    python3Packages.rospkg
    rostest
  ];
}
