{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  pr2_msgs,
  python3Packages,
  rospy,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "wifi_ddwrt";
  pkgFinal = final.noetic.wifi_ddwrt;
  src = srcs.wifi_ddwrt.wifi_ddwrt;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    pr2_msgs
    python3Packages.mechanize
    rospy
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
