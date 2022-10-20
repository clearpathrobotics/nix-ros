{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "naoqi_libqicore";
  pkgFinal = final.noetic.naoqi_libqicore;
  src = srcs.naoqi_libqicore.naoqi_libqicore;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
