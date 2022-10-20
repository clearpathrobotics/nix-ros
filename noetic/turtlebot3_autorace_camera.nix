{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  python3Packages,
  pythonPackages,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_autorace_camera";
  pkgFinal = final.noetic.turtlebot3_autorace_camera;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_camera;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    python3Packages.numpy
    python3Packages.opencv3
    pythonPackages.enum34
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
