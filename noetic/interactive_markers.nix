{
  catkin,
  rosconsole,
  roscpp,
  rospy,
  rostest,
  std_msgs,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "interactive_markers";
  pkgFinal = final.noetic.interactive_markers;
  src = srcs.interactive_markers.interactive_markers;

  colconBuildDepends = [
    catkin
    rosconsole
    roscpp
    rospy
    rostest
    std_msgs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    rosconsole
    roscpp
    rospy
    rostest
    std_msgs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
