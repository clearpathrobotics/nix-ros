{
  catkin,
  dynamic_reconfigure,
  mrpt2,
  roscpp,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_local_obstacles";
  pkgFinal = final.noetic.mrpt_local_obstacles;
  src = srcs.mrpt_navigation.mrpt_local_obstacles;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    mrpt2
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    mrpt2
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
