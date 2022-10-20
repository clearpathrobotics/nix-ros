{
  catkin,
  python3Packages,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "snmp_ros";
  pkgFinal = final.noetic.snmp_ros;
  src = srcs.snmp_ros.snmp_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.pysnmp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
