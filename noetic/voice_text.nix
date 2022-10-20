{
  catkin,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  nkf,
  roscpp,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "voice_text";
  pkgFinal = final.noetic.voice_text;
  src = srcs.jsk_3rdparty.voice_text;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_generation
    roscpp
  ];

  colconRunDepends = [
    dynamic_reconfigure
    message_runtime
    nkf
    sound_play
  ];

  colconTestDepends = [
  ];
}
