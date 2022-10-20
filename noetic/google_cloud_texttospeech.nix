{
  catkin,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "google_cloud_texttospeech";
  pkgFinal = final.noetic.google_cloud_texttospeech;
  src = srcs.jsk_3rdparty.google_cloud_texttospeech;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    sound_play
  ];

  colconTestDepends = [
  ];
}
