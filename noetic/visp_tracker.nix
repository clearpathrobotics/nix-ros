{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  image_proc,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  resource_retriever,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visp_tracker";
  pkgFinal = final.noetic.visp_tracker;
  src = srcs.vision_visp.visp_tracker;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    image_proc
    image_transport
    message_generation
    nodelet
    resource_retriever
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    image_proc
    image_transport
    message_generation
    message_runtime
    nodelet
    resource_retriever
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
