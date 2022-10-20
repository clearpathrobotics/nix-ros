{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  pluginlib,
  rclcpp,
  rcutils,
  ros1_bridge,
  ros1_rosbag_storage_vendor,
  rosbag2,
  rosbag2_storage,
  rosbag2_test_common,
  rosbag2_transport,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_bag_v2_plugins";
  pkgFinal = final.rolling.rosbag2_bag_v2_plugins;
  src = srcs.rosbag2_bag_v2.rosbag2_bag_v2_plugins;

  colconBuildDepends = [
    ament_cmake
    class_loader
    pluginlib
    rclcpp
    rcutils
    ros1_bridge
    ros1_rosbag_storage_vendor
    rosbag2
    rosbag2_storage
  ];

  colconRunDepends = [
    class_loader
    pluginlib
    rclcpp
    rcutils
    ros1_bridge
    ros1_rosbag_storage_vendor
    rosbag2
    rosbag2_storage
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rosbag2_test_common
    rosbag2_transport
    std_msgs
  ];
}
