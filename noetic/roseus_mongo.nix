{
  catkin,
  mongodb_store,
  mongodb_store_msgs,
  roseus,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roseus_mongo";
  pkgFinal = final.noetic.roseus_mongo;
  src = srcs.jsk_roseus.roseus_mongo;

  colconBuildDepends = [
    catkin
    mongodb_store
    mongodb_store_msgs
    roseus
    rostest
  ];

  colconRunDepends = [
    mongodb_store
    mongodb_store_msgs
    roseus
  ];

  colconTestDepends = [
  ];
}
