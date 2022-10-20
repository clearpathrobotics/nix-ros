{
  catkin,
  python3Packages,
  python_qt_binding,
  rostopic,
  rqt_gui,
  rqt_gui_py,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_topic";
  pkgFinal = final.noetic.rqt_topic;
  src = srcs.rqt_topic.rqt_topic;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    rostopic
    rqt_gui
    rqt_gui_py
    std_msgs
  ];

  colconTestDepends = [
  ];
}
