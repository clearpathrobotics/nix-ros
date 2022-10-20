{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "py_trees";
  pkgFinal = final.noetic.py_trees;
  src = srcs.py_trees.py_trees;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.pydot
  ];

  colconTestDepends = [
  ];
}
