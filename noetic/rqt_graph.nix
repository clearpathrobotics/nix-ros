{
  catkin,
  python3Packages,
  python_qt_binding,
  qt_dotgraph,
  rosgraph,
  rosgraph_msgs,
  roslib,
  rosnode,
  rospy,
  rosservice,
  rostopic,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_graph";
  pkgFinal = final.noetic.rqt_graph;
  src = srcs.rqt_graph.rqt_graph;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.rospkg
    python_qt_binding
    qt_dotgraph
    rosgraph
    rosgraph_msgs
    roslib
    rosnode
    rospy
    rosservice
    rostopic
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
