{
  boost,
  catkin,
  class_loader,
  pluginlib,
  qt5,
  rqt_gui,
  rqt_gui_cpp,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_rviz";
  pkgFinal = final.noetic.rqt_rviz;
  src = srcs.rqt_rviz.rqt_rviz;

  colconBuildDepends = [
    boost
    catkin
    class_loader
    qt5.qtbase
    rqt_gui
    rqt_gui_cpp
    rviz
  ];

  colconRunDepends = [
    boost
    pluginlib
    rqt_gui
    rqt_gui_cpp
    rviz
  ];

  colconTestDepends = [
  ];
}
