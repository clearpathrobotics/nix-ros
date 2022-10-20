{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gl_dependency";
  pkgFinal = final.noetic.gl_dependency;
  src = srcs.gl_dependency.gl_dependency;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.pyqt5
  ];

  colconTestDepends = [
  ];
}
