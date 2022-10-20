{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  message_generation,
  message_runtime,
  rospy,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "axis_camera";
  pkgFinal = final.noetic.axis_camera;
  src = srcs.axis_camera.axis_camera;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    message_generation
    rospy
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    message_runtime
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
