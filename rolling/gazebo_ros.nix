{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  gazebo_dev,
  gazebo_msgs,
  geometry_msgs,
  launch_ros,
  launch_testing_ament_cmake,
  python3Packages,
  rcl,
  rclcpp,
  rclpy,
  rmw,
  ros2run,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tinyxml_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros";
  pkgFinal = final.rolling.gazebo_ros;
  src = srcs.gazebo_ros_pkgs.gazebo_ros;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    gazebo_dev
    gazebo_msgs
    rcl
    rclcpp
    rclpy
    rmw
    std_srvs
    tinyxml_vendor
  ];

  colconRunDepends = [
    builtin_interfaces
    gazebo_dev
    gazebo_msgs
    geometry_msgs
    launch_ros
    python3Packages.lxml
    rcl
    rclcpp
    rclpy
    rmw
    sensor_msgs
    std_srvs
    tinyxml_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    geometry_msgs
    launch_testing_ament_cmake
    ros2run
    sensor_msgs
    std_msgs
  ];
}
