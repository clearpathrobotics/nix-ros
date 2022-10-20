{
  boost,
  catkin,
  geometry_msgs,
  gtest,
  pluginlib,
  roscpp,
  rostest,
  rostime,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros";
  pkgFinal = final.noetic.warehouse_ros;
  src = srcs.warehouse_ros.warehouse_ros;

  colconBuildDepends = [
    catkin
    geometry_msgs
    pluginlib
    roscpp
    rostime
    std_msgs
    tf
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    pluginlib
    roscpp
    rostime
    std_msgs
    tf
  ];

  colconTestDepends = [
    gtest
    rostest
  ];
}
