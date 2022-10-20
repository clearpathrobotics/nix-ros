{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_android_msgs";
  pkgFinal = final.noetic.cob_android_msgs;
  src = srcs.cob_android.cob_android_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
