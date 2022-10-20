{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  rospy,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamic_tf_publisher";
  pkgFinal = final.noetic.dynamic_tf_publisher;
  src = srcs.jsk_common.dynamic_tf_publisher;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    message_generation
    rospy
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
