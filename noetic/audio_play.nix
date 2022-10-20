{
  audio_common_msgs,
  catkin,
  gst_all_1,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audio_play";
  pkgFinal = final.noetic.audio_play;
  src = srcs.audio_common.audio_play;

  colconBuildDepends = [
    audio_common_msgs
    catkin
    gst_all_1.gst-plugins-base
    gst_all_1.gstreamer
    roscpp
  ];

  colconRunDepends = [
    audio_common_msgs
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-ugly
    gst_all_1.gstreamer
    roscpp
  ];

  colconTestDepends = [
  ];
}
