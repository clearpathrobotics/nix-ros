{
  catkin,
  jsk_interactive,
  jsk_interactive_marker,
  jsk_interactive_test,
  jsk_rqt_plugins,
  jsk_rviz_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_visualization";
  pkgFinal = final.noetic.jsk_visualization;
  src = srcs.jsk_visualization.jsk_visualization;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    jsk_interactive
    jsk_interactive_marker
    jsk_interactive_test
    jsk_rqt_plugins
    jsk_rviz_plugins
  ];

  colconTestDepends = [
  ];
}
