{
  catkin,
  cob_android_msgs,
  cob_android_resource_server,
  cob_android_script_server,
  cob_android_settings,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_android";
  pkgFinal = final.noetic.cob_android;
  src = srcs.cob_android.cob_android;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_android_msgs
    cob_android_resource_server
    cob_android_script_server
    cob_android_settings
  ];

  colconTestDepends = [
  ];
}
