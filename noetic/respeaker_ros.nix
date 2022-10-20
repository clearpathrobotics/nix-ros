{
  angles,
  audio_common_msgs,
  catkin,
  dynamic_reconfigure,
  flac,
  geometry_msgs,
  jsk_tools,
  python3Packages,
  pythonPackages,
  speech_recognition_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "respeaker_ros";
  pkgFinal = final.noetic.respeaker_ros;
  src = srcs.jsk_3rdparty.respeaker_ros;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    angles
    audio_common_msgs
    dynamic_reconfigure
    flac
    geometry_msgs
    python3Packages.numpy
    python3Packages.pyaudio
    pythonPackages.pyusb
    speech_recognition_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    jsk_tools
  ];
}
