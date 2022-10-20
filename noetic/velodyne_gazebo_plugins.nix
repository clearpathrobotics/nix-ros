{
  catkin,
  gazebo_ros,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_gazebo_plugins";
  pkgFinal = final.noetic.velodyne_gazebo_plugins;
  src = srcs.velodyne_simulator.velodyne_gazebo_plugins;

  colconBuildDepends = [
    catkin
    gazebo_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    gazebo_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
