{
  catkin,
  qt5,
  rviz,
  slam_toolbox_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slam_toolbox_rviz";
  pkgFinal = final.noetic.slam_toolbox_rviz;
  src = srcs.slam_toolbox.slam_toolbox_rviz;

  colconBuildDepends = [
    catkin
    qt5.qtbase
    rviz
    slam_toolbox_msgs
  ];

  colconRunDepends = [
    qt5.qtbase
    rviz
    slam_toolbox_msgs
  ];

  colconTestDepends = [
  ];
}
