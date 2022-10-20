{
  boost,
  catkin,
  qt5,
  rosbag_storage,
  roscpp,
  rosgraph_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_console";
  pkgFinal = final.noetic.swri_console;
  src = srcs.swri_console.swri_console;

  colconBuildDepends = [
    boost
    catkin
    qt5.qtbase
    rosbag_storage
    roscpp
    rosgraph_msgs
  ];

  colconRunDepends = [
    boost
    qt5.qtbase
    rosbag_storage
    roscpp
    rosgraph_msgs
  ];

  colconTestDepends = [
  ];
}
