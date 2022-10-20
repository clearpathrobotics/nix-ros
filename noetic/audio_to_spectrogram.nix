{
  audio_capture,
  audio_common_msgs,
  catkin,
  cv_bridge,
  image_view,
  jsk_recognition_msgs,
  python3Packages,
  roslaunch,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audio_to_spectrogram";
  pkgFinal = final.noetic.audio_to_spectrogram;
  src = srcs.jsk_recognition.audio_to_spectrogram;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audio_capture
    audio_common_msgs
    cv_bridge
    image_view
    jsk_recognition_msgs
    python3Packages.matplotlib
    sensor_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
