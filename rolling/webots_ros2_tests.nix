{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2bag,
  rosbag2_storage_default_plugins,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_ros,
  webots_ros2_driver,
  webots_ros2_epuck,
  webots_ros2_mavic,
  webots_ros2_tesla,
  webots_ros2_tiago,
  webots_ros2_turtlebot,
  webots_ros2_universal_robot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_tests";
  pkgFinal = final.rolling.webots_ros2_tests;
  src = srcs.webots_ros2.webots_ros2_tests;

  colconBuildDepends = [
    rclpy
    ros2bag
    rosbag2_storage_default_plugins
    webots_ros2_driver
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    geometry_msgs
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    python3Packages.pytest
    sensor_msgs
    std_msgs
    std_srvs
    tf2_ros
    webots_ros2_epuck
    webots_ros2_mavic
    webots_ros2_tesla
    webots_ros2_tiago
    webots_ros2_turtlebot
    webots_ros2_universal_robot
  ];
}
