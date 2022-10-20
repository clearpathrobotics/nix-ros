{
  catkin,
  geometry_msgs,
  roscpp,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf_static_publisher";
  pkgFinal = final.noetic.tf_static_publisher;
  src = srcs.cras_ros_utils.tf_static_publisher;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
