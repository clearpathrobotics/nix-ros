{
  ament_cmake,
  gazebo_dev,
  gazebo_msgs,
  gazebo_ros,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_gazebo_plugins";
  pkgFinal = final.rolling.velodyne_gazebo_plugins;
  src = srcs.velodyne_simulator.velodyne_gazebo_plugins;

  colconBuildDepends = [
    ament_cmake
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
