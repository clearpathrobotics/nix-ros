{
  catkin,
  class_loader,
  compressed_image_transport,
  cv_bridge,
  dynamic_reconfigure,
  image_proc,
  image_transport,
  image_view,
  message_generation,
  message_runtime,
  nodelet,
  rosbag,
  roscpp,
  roslaunch,
  rosservice,
  rostest,
  rostopic,
  sensor_msgs,
  std_msgs,
  std_srvs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opencv_apps";
  pkgFinal = final.noetic.opencv_apps;
  src = srcs.opencv_apps.opencv_apps;

  colconBuildDepends = [
    catkin
    class_loader
    cv_bridge
    dynamic_reconfigure
    image_transport
    message_generation
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    class_loader
    cv_bridge
    dynamic_reconfigure
    image_transport
    image_view
    message_runtime
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    compressed_image_transport
    image_proc
    rosbag
    roslaunch
    rosservice
    rostest
    rostopic
    topic_tools
  ];
}
