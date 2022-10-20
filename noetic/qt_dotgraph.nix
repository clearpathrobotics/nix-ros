{
  catkin,
  python3Packages,
  python_qt_binding,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qt_dotgraph";
  pkgFinal = final.noetic.qt_dotgraph;
  src = srcs.qt_gui_core.qt_dotgraph;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.pydot
    python_qt_binding
  ];

  colconTestDepends = [
    python3Packages.pygraphviz
  ];
}
