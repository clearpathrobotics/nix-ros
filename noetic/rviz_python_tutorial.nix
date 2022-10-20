{
  catkin,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_python_tutorial";
  pkgFinal = final.noetic.rviz_python_tutorial;
  src = srcs.visualization_tutorials.rviz_python_tutorial;

  colconBuildDepends = [
    catkin
    rviz
  ];

  colconRunDepends = [
    rviz
  ];

  colconTestDepends = [
  ];
}
