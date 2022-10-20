{
  catkin,
  rosmon_core,
  rqt_rosmon,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmon";
  pkgFinal = final.noetic.rosmon;
  src = srcs.rosmon.rosmon;

  colconBuildDepends = [
    catkin
    rosmon_core
    rqt_rosmon
  ];

  colconRunDepends = [
    rosmon_core
    rqt_rosmon
  ];

  colconTestDepends = [
  ];
}
