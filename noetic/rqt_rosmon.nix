{
  catkin,
  pluginlib,
  qt5,
  roscpp,
  rosmon_msgs,
  rqt_gui,
  rqt_gui_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_rosmon";
  pkgFinal = final.noetic.rqt_rosmon;
  src = srcs.rosmon.rqt_rosmon;

  colconBuildDepends = [
    catkin
    pluginlib
    qt5.qtbase
    roscpp
    rosmon_msgs
    rqt_gui
    rqt_gui_cpp
  ];

  colconRunDepends = [
    pluginlib
    roscpp
    rosmon_msgs
    rqt_gui
    rqt_gui_cpp
  ];

  colconTestDepends = [
  ];
}
