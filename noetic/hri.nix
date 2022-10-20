{
  boost,
  catkin,
  cv_bridge,
  geometry_msgs,
  hri_msgs,
  rosconsole,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hri";
  pkgFinal = final.noetic.hri;
  src = srcs.libhri.hri;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    geometry_msgs
    hri_msgs
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    hri_msgs
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
