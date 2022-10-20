{
  audio_capture,
  audio_common_msgs,
  audio_play,
  catkin,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audio_common";
  pkgFinal = final.noetic.audio_common;
  src = srcs.audio_common.audio_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    audio_capture
    audio_common_msgs
    audio_play
    sound_play
  ];

  colconTestDepends = [
  ];
}
