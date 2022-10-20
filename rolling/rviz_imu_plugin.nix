{
  ament_cmake,
  message_filters,
  pluginlib,
  qt5,
  rclcpp,
  rviz_common,
  rviz_ogre_vendor,
  rviz_rendering,
  sensor_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_imu_plugin";
  pkgFinal = final.rolling.rviz_imu_plugin;
  src = srcs.imu_tools.rviz_imu_plugin;

  colconBuildDepends = [
    ament_cmake
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
