{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_example_line_follower";
  pkgFinal = final.noetic.leo_example_line_follower;
  src = srcs.leo_examples.leo_example_line_follower;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
