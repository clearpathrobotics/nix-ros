{
  catkin,
  interactive_marker_tutorials,
  librviz_tutorial,
  rviz_plugin_tutorials,
  rviz_python_tutorial,
  visualization_marker_tutorials,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visualization_tutorials";
  pkgFinal = final.noetic.visualization_tutorials;
  src = srcs.visualization_tutorials.visualization_tutorials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    interactive_marker_tutorials
    librviz_tutorial
    rviz_plugin_tutorials
    rviz_python_tutorial
    visualization_marker_tutorials
  ];

  colconTestDepends = [
  ];
}
