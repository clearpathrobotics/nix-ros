{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "media_export";
  pkgFinal = final.noetic.media_export;
  src = srcs.media_export.media_export;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
