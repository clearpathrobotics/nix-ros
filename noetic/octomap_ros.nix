{
  catkin,
  octomap_msgs,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_ros";
  pkgFinal = final.noetic.octomap_ros;
  src = srcs.octomap_ros.octomap_ros;

  colconBuildDepends = [
    catkin
    octomap_msgs
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    octomap_msgs
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
