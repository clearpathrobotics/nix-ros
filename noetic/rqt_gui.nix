{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui";
  pkgFinal = final.noetic.rqt_gui;
  src = srcs.rqt.rqt_gui;

  colconBuildDepends = [
    catkin
    qt_gui
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rospy
  ];

  colconTestDepends = [
  ];
}
