{
  python3Packages,
  python_qt_binding,
  qt_dotgraph,
  rclpy,
  rqt_graph,
  rqt_gui,
  rqt_gui_py,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_tf_tree";
  pkgFinal = final.rolling.rqt_tf_tree;
  src = srcs.rqt_tf_tree.rqt_tf_tree;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python_qt_binding
    qt_dotgraph
    rclpy
    rqt_graph
    rqt_gui
    rqt_gui_py
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
