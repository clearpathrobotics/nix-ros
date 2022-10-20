{
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "oled_display_node";
  pkgFinal = final.noetic.oled_display_node;
  src = srcs.oled_display_node.oled_display_node;

  colconBuildDepends = [
    catkin
    message_generation
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
