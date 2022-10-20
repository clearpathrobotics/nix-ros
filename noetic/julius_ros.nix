{
  audio_capture,
  audio_common_msgs,
  catkin,
  julius,
  nkf,
  python3Packages,
  rospy,
  rostest,
  sound_play,
  speech_recognition_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "julius_ros";
  pkgFinal = final.noetic.julius_ros;
  src = srcs.jsk_3rdparty.julius_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audio_capture
    audio_common_msgs
    julius
    nkf
    python3Packages.lxml
    python3Packages.rospkg
    rospy
    sound_play
    speech_recognition_msgs
    std_srvs
  ];

  colconTestDepends = [
    rostest
  ];
}
