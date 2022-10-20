{
  catkin,
  geometry_msgs,
  nav_msgs,
  python3Packages,
  rospy,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_numpy";
  pkgFinal = final.noetic.ros_numpy;
  src = srcs.ros_numpy.ros_numpy;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    python3Packages.numpy
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
