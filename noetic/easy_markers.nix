{
  catkin,
  geometry_msgs,
  interactive_markers,
  roslint,
  rospy,
  rviz,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "easy_markers";
  pkgFinal = final.noetic.easy_markers;
  src = srcs.wu_ros_tools.easy_markers;

  colconBuildDepends = [
    catkin
    geometry_msgs
    interactive_markers
    rospy
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    interactive_markers
    rospy
    rviz
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
