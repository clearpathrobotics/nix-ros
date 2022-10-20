{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_example_object_detection";
  pkgFinal = final.noetic.leo_example_object_detection;
  src = srcs.leo_examples.leo_example_object_detection;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
