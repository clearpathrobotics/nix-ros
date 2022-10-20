{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_gtest,
  ament_cmake_python,
  ament_index_cpp,
  ament_lint_auto,
  class_loader,
  launch_ros,
  launch_testing_ament_cmake,
  mongodb,
  rclcpp,
  rclpy,
  std_msgs,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros_mongo";
  pkgFinal = final.rolling.warehouse_ros_mongo;
  src = srcs.warehouse_ros_mongo.warehouse_ros_mongo;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    class_loader
    mongodb
    rclcpp
    rclpy
    std_msgs
    warehouse_ros
  ];

  colconRunDepends = [
    class_loader
    mongodb
    rclcpp
    rclpy
    std_msgs
    warehouse_ros
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_gtest
    ament_index_cpp
    ament_lint_auto
    launch_ros
    launch_testing_ament_cmake
  ];
}
