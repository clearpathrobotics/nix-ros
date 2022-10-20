{
  catkin,
  cmake_modules,
  eigen,
  geometry_msgs,
  python3Packages,
  rospy,
  rostest,
  sensor_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_sensor_msgs";
  pkgFinal = final.noetic.tf2_sensor_msgs;
  src = srcs.geometry2.tf2_sensor_msgs;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    python3Packages.pykdl
    rospy
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    geometry_msgs
    rostest
  ];
}
