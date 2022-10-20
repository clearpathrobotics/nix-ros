{
  catkin,
  gazebo,
  gazebo_plugins,
  gazebo_ros,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_gazebo_plugin";
  pkgFinal = final.noetic.velodyne_gazebo_plugin;
  src = srcs.velo2cam_gazebo.velodyne_gazebo_plugin;

  colconBuildDepends = [
    catkin
    gazebo
    gazebo_plugins
    gazebo_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    gazebo_plugins
    gazebo_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
