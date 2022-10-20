{
  catkin,
  python3Packages,
  python_qt_binding,
  rosbag,
  rosgraph_msgs,
  roslib,
  rosnode,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_bag";
  pkgFinal = final.noetic.rqt_bag;
  src = srcs.rqt_bag.rqt_bag;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    rosbag
    rosgraph_msgs
    roslib
    rosnode
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
