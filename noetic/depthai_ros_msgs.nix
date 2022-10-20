{
  geometry_msgs,
  sensor_msgs,
  std_msgs,
  vision_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depthai_ros_msgs";
  pkgFinal = final.noetic.depthai_ros_msgs;
  src = srcs.depthai-ros.depthai_ros_msgs;

  colconBuildDepends = [
    geometry_msgs
    sensor_msgs
    std_msgs
    vision_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    sensor_msgs
    std_msgs
    vision_msgs
  ];

  colconTestDepends = [
  ];
}
