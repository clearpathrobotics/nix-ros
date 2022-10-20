{
  actionlib,
  catkin,
  dynamic_tf_publisher,
  geometry_msgs,
  jsk_interactive_marker,
  mk,
  rosbuild,
  rospy,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_interactive";
  pkgFinal = final.noetic.jsk_interactive;
  src = srcs.jsk_visualization.jsk_interactive;

  colconBuildDepends = [
    actionlib
    catkin
    dynamic_tf_publisher
    geometry_msgs
    jsk_interactive_marker
    mk
    rosbuild
    rospy
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    dynamic_tf_publisher
    geometry_msgs
    jsk_interactive_marker
    rospy
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
