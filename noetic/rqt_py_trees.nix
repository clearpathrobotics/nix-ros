{
  catkin,
  geometry_msgs,
  py_trees,
  py_trees_msgs,
  python3Packages,
  qt_dotgraph,
  rospy,
  rqt_bag,
  rqt_graph,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_py_trees";
  pkgFinal = final.noetic.rqt_py_trees;
  src = srcs.rqt_py_trees.rqt_py_trees;

  colconBuildDepends = [
    catkin
    py_trees
    py_trees_msgs
    rqt_bag
  ];

  colconRunDepends = [
    geometry_msgs
    py_trees
    py_trees_msgs
    python3Packages.pygraphviz
    python3Packages.rospkg
    python3Packages.termcolor
    qt_dotgraph
    rospy
    rqt_bag
    rqt_graph
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
