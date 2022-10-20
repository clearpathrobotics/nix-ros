{
  audio_video_recorder,
  catkin,
  dynamic_tf_publisher,
  image_view2,
  jsk_network_tools,
  jsk_rosbag_tools,
  jsk_tilt_laser,
  jsk_tools,
  jsk_topic_tools,
  multi_map_server,
  virtual_force_publisher,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_common";
  pkgFinal = final.noetic.jsk_common;
  src = srcs.jsk_common.jsk_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audio_video_recorder
    dynamic_tf_publisher
    image_view2
    jsk_network_tools
    jsk_rosbag_tools
    jsk_tilt_laser
    jsk_tools
    jsk_topic_tools
    multi_map_server
    virtual_force_publisher
  ];

  colconTestDepends = [
  ];
}
