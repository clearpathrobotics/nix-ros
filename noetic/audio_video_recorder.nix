{
  audio_common_msgs,
  catkin,
  gst_all_1,
  message_filters,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audio_video_recorder";
  pkgFinal = final.noetic.audio_video_recorder;
  src = srcs.jsk_common.audio_video_recorder;

  colconBuildDepends = [
    audio_common_msgs
    catkin
    gst_all_1.gst-plugins-base
    gst_all_1.gstreamer
    message_filters
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    audio_common_msgs
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-ugly
    gst_all_1.gstreamer
    message_filters
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
