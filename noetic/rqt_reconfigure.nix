{
  catkin,
  dynamic_reconfigure,
  python3Packages,
  python_qt_binding,
  roslint,
  rospy,
  rostest,
  rqt_console,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_reconfigure";
  pkgFinal = final.noetic.rqt_reconfigure;
  src = srcs.rqt_reconfigure.rqt_reconfigure;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
    roslint
  ];

  colconRunDepends = [
    dynamic_reconfigure
    python3Packages.pyyaml
    python_qt_binding
    rospy
    rqt_console
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
    rostest
  ];
}
