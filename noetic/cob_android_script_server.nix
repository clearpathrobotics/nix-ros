{
  catkin,
  cob_android_msgs,
  cob_script_server,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_android_script_server";
  pkgFinal = final.noetic.cob_android_script_server;
  src = srcs.cob_android.cob_android_script_server;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_android_msgs
    cob_script_server
    rospy
  ];

  colconTestDepends = [
  ];
}
