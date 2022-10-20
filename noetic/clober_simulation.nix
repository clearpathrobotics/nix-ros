{
  catkin,
  clober_description,
  gazebo,
  gazebo_ros,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_simulation";
  pkgFinal = final.noetic.clober_simulation;
  src = srcs.clober.clober_simulation;

  colconBuildDepends = [
    catkin
    gazebo_ros
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    clober_description
    gazebo
    gazebo_ros
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
