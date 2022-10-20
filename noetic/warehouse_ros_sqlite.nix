{
  catkin,
  class_loader,
  roscpp,
  rostest,
  rostime,
  sqlite,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros_sqlite";
  pkgFinal = final.noetic.warehouse_ros_sqlite;
  src = srcs.warehouse_ros_sqlite.warehouse_ros_sqlite;

  colconBuildDepends = [
    catkin
    class_loader
    roscpp
    rostime
    sqlite
    warehouse_ros
  ];

  colconRunDepends = [
    class_loader
    roscpp
    rostime
    sqlite
    warehouse_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
