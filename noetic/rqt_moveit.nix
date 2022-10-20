{
  catkin,
  python3Packages,
  python_qt_binding,
  rosnode,
  rospy,
  rostopic,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  rqt_topic,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_moveit";
  pkgFinal = final.noetic.rqt_moveit;
  src = srcs.rqt_moveit.rqt_moveit;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python_qt_binding
    rosnode
    rospy
    rostopic
    rqt_gui
    rqt_gui_py
    rqt_py_common
    rqt_topic
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
