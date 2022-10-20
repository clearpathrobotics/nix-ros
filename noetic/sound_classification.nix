{
  audio_capture,
  audio_to_spectrogram,
  catkin,
  catkin_virtualenv,
  image_view,
  jsk_recognition_msgs,
  jsk_topic_tools,
  message_filters,
  message_generation,
  message_runtime,
  roslaunch,
  rospy,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sound_classification";
  pkgFinal = final.noetic.sound_classification;
  src = srcs.jsk_recognition.sound_classification;

  colconBuildDepends = [
    catkin
    catkin_virtualenv
    message_generation
  ];

  colconRunDepends = [
    audio_capture
    audio_to_spectrogram
    image_view
    jsk_recognition_msgs
    jsk_topic_tools
    message_filters
    message_runtime
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
