{
  catkin,
  class_loader,
  mongodb,
  roscpp,
  rostest,
  rostime,
  std_msgs,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros_mongo";
  pkgFinal = final.noetic.warehouse_ros_mongo;
  src = srcs.warehouse_ros_mongo.warehouse_ros_mongo;

  colconBuildDepends = [
    catkin
    class_loader
    roscpp
    rostime
    std_msgs
    warehouse_ros
  ];

  colconRunDepends = [
    class_loader
    roscpp
    rostime
    std_msgs
    warehouse_ros
  ];

  colconTestDepends = [
    mongodb
    rostest
  ];
}
