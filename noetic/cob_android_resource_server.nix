{
  catkin,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_android_resource_server";
  pkgFinal = final.noetic.cob_android_resource_server;
  src = srcs.cob_android.cob_android_resource_server;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    rospy
  ];

  colconTestDepends = [
  ];
}
