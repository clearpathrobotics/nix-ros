{
  angles,
  catkin,
  geometry_msgs,
  graphviz,
  message_filters,
  message_generation,
  message_runtime,
  rosconsole,
  roscpp,
  rostest,
  rostime,
  rosunit,
  roswtf,
  sensor_msgs,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf";
  pkgFinal = final.noetic.tf;
  src = srcs.geometry.tf;

  colconBuildDepends = [
    angles
    catkin
    geometry_msgs
    message_filters
    message_generation
    rosconsole
    roscpp
    rostime
    sensor_msgs
    std_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    graphviz
    message_filters
    message_runtime
    rosconsole
    roscpp
    roswtf
    sensor_msgs
    std_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
