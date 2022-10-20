{
  actionlib,
  actionlib_msgs,
  audio_common_msgs,
  catkin,
  diagnostic_msgs,
  flite,
  gst_all_1,
  message_generation,
  message_runtime,
  python3Packages,
  resource_retriever,
  roscpp,
  roslib,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sound_play";
  pkgFinal = final.noetic.sound_play;
  src = srcs.audio_common.sound_play;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    audio_common_msgs
    catkin
    diagnostic_msgs
    message_generation
    python3Packages.setuptools
    roscpp
    roslib
  ];

  colconRunDepends = [
    actionlib_msgs
    audio_common_msgs
    diagnostic_msgs
    flite
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-ugly
    gst_all_1.gstreamer
    message_runtime
    python3Packages.pygobject3
    resource_retriever
    roscpp
    roslib
    rospy
  ];

  colconTestDepends = [
  ];
}
