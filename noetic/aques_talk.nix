{
  catkin,
  kakasi,
  nkf,
  sound_play,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aques_talk";
  pkgFinal = final.noetic.aques_talk;
  src = srcs.jsk_3rdparty.aques_talk;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    kakasi
    nkf
    sound_play
  ];

  colconTestDepends = [
  ];
}
