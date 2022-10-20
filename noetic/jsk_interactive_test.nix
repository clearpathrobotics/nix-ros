{
  catkin,
  jsk_interactive,
  jsk_interactive_marker,
  mk,
  rosbuild,
  rospy,
  rviz,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_interactive_test";
  pkgFinal = final.noetic.jsk_interactive_test;
  src = srcs.jsk_visualization.jsk_interactive_test;

  colconBuildDepends = [
    catkin
    jsk_interactive
    jsk_interactive_marker
    mk
    rosbuild
    rospy
    visualization_msgs
  ];

  colconRunDepends = [
    jsk_interactive
    jsk_interactive_marker
    rospy
    rviz
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
