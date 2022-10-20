{
  catkin,
  geneus,
  roseus,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_roseus";
  pkgFinal = final.noetic.jsk_roseus;
  src = srcs.jsk_roseus.jsk_roseus;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geneus
    roseus
  ];

  colconTestDepends = [
  ];
}
