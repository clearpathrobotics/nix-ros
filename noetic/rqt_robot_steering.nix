{
  catkin,
  geometry_msgs,
  python3Packages,
  python_qt_binding,
  rostopic,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_robot_steering";
  pkgFinal = final.noetic.rqt_robot_steering;
  src = srcs.rqt_robot_steering.rqt_robot_steering;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.rospkg
    python_qt_binding
    rostopic
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
