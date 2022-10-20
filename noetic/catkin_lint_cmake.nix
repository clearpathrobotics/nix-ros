{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "catkin_lint_cmake";
  pkgFinal = final.noetic.catkin_lint_cmake;
  src = srcs.catkin_lint_cmake.catkin_lint_cmake;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.lxml
    python3Packages.rospkg
  ];

  colconTestDepends = [
  ];
}
