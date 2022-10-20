{
  catkin,
  laser_filters,
  nav_msgs,
  roslaunch,
  roslint,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_laser";
  pkgFinal = final.noetic.map_laser;
  src = srcs.laser_filtering.map_laser;

  colconBuildDepends = [
    catkin
    nav_msgs
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    laser_filters
    nav_msgs
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
