{
  catkin,
  python3Packages,
  rosbridge_library,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mqtt_bridge";
  pkgFinal = final.noetic.mqtt_bridge;
  src = srcs.mqtt_bridge.mqtt_bridge;

  colconBuildDepends = [
    catkin
    python3Packages.pip
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.msgpack
    python3Packages.pymongo
    rosbridge_library
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
