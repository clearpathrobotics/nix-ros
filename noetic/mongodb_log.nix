{
  catkin,
  mongodb_store,
  openssl,
  python3Packages,
  rosgraph,
  roslib,
  rospy,
  rostopic,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mongodb_log";
  pkgFinal = final.noetic.mongodb_log;
  src = srcs.mongodb_store.mongodb_log;

  colconBuildDepends = [
    catkin
    mongodb_store
    openssl
    rosgraph
    roslib
    rospy
    rostopic
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    mongodb_store
    python3Packages.pymongo
    rosgraph
    roslib
    rospy
    rostopic
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
