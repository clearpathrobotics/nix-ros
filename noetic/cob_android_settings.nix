{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_android_settings";
  pkgFinal = final.noetic.cob_android_settings;
  src = srcs.cob_android.cob_android_settings;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
