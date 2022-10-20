{
  catkin,
  doxygen,
  genmsg,
  graphviz,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosdoc_lite";
  pkgFinal = final.noetic.rosdoc_lite;
  src = srcs.rosdoc_lite.rosdoc_lite;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    doxygen
    genmsg
    graphviz
    python3Packages.catkin-pkg
    python3Packages.kitchen
    python3Packages.pyyaml
    python3Packages.rospkg
    python3Packages.sphinx
  ];

  colconTestDepends = [
  ];
}
