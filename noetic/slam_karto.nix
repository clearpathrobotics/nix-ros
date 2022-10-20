{
  catkin,
  eigen,
  message_filters,
  nav_msgs,
  open_karto,
  rosconsole,
  roscpp,
  sensor_msgs,
  sparse_bundle_adjustment,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slam_karto";
  pkgFinal = final.noetic.slam_karto;
  src = srcs.slam_karto.slam_karto;

  colconBuildDepends = [
    catkin
    eigen
    message_filters
    nav_msgs
    open_karto
    rosconsole
    roscpp
    sensor_msgs
    sparse_bundle_adjustment
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    eigen
    message_filters
    nav_msgs
    open_karto
    rosconsole
    roscpp
    sensor_msgs
    sparse_bundle_adjustment
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
