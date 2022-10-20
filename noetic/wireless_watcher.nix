{
  catkin,
  rospy,
  wireless_msgs,
  wirelesstools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wireless_watcher";
  pkgFinal = final.noetic.wireless_watcher;
  src = srcs.wireless.wireless_watcher;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    wireless_msgs
    wirelesstools
  ];

  colconTestDepends = [
  ];
}
