{
  audio_capture,
  audio_common_msgs,
  catkin,
  catkin_virtualenv,
  dynamic_reconfigure,
  flac,
  roslaunch,
  rostest,
  sound_play,
  speech_recognition_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_speech_recognition";
  pkgFinal = final.noetic.ros_speech_recognition;
  src = srcs.jsk_3rdparty.ros_speech_recognition;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    dynamic_reconfigure
    speech_recognition_msgs
  ];

  colconRunDepends = [
    audio_capture
    audio_common_msgs
    dynamic_reconfigure
    flac
    sound_play
    speech_recognition_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
