{
  actionlib,
  catkin,
  genmsg,
  genpy,
  python_qt_binding,
  qt_gui,
  rosbag,
  roslib,
  rospy,
  rostopic,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_py_common";
  pkgFinal = final.noetic.rqt_py_common;
  src = srcs.rqt.rqt_py_common;

  colconBuildDepends = [
    catkin
    genmsg
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    genpy
    python_qt_binding
    qt_gui
    rosbag
    roslib
    rospy
    rostopic
  ];

  colconTestDepends = [
  ];
}
