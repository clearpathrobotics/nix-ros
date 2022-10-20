{
  catkin,
  geometry_msgs,
  message_generation,
  mongodb,
  mongodb_store_msgs,
  openssl,
  python3Packages,
  roscpp,
  rospy,
  rostest,
  std_msgs,
  std_srvs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mongodb_store";
  pkgFinal = final.noetic.mongodb_store;
  src = srcs.mongodb_store.mongodb_store;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    mongodb
    mongodb_store_msgs
    openssl
    python3Packages.catkin-pkg
    roscpp
    rospy
    rostest
    std_msgs
    std_srvs
    topic_tools
  ];

  colconRunDepends = [
    geometry_msgs
    mongodb
    mongodb_store_msgs
    python3Packages.future
    python3Packages.pymongo
    roscpp
    rospy
    std_msgs
    std_srvs
    topic_tools
  ];

  colconTestDepends = [
  ];
}
