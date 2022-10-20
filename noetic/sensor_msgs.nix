{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  python3Packages,
  rosbag,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sensor_msgs";
  pkgFinal = final.noetic.sensor_msgs;
  src = srcs.common_msgs.sensor_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    python3Packages.setuptools
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
    rosbag
    rosunit
  ];
}
