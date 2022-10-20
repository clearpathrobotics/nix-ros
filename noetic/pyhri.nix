{
  catkin,
  cv_bridge,
  geometry_msgs,
  hri_msgs,
  rospy,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pyhri";
  pkgFinal = final.noetic.pyhri;
  src = srcs.pyhri.pyhri;

  colconBuildDepends = [
    catkin
    cv_bridge
    geometry_msgs
    hri_msgs
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    hri_msgs
    rospy
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
