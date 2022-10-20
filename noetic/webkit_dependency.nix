{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webkit_dependency";
  pkgFinal = final.noetic.webkit_dependency;
  src = srcs.webkit_dependency.webkit_dependency;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.pyqt5_with_qtwebkit
  ];

  colconTestDepends = [
  ];
}
