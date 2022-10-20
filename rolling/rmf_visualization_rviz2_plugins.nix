{
  ament_cmake,
  ament_cmake_uncrustify,
  eigen,
  pluginlib,
  qt5,
  rclcpp,
  resource_retriever,
  rmf_door_msgs,
  rmf_lift_msgs,
  rmf_traffic_ros2,
  rmf_utils,
  rmf_visualization_msgs,
  rviz_common,
  rviz_default_plugins,
  rviz_rendering,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_rviz2_plugins";
  pkgFinal = final.rolling.rmf_visualization_rviz2_plugins;
  src = srcs.rmf_visualization.rmf_visualization_rviz2_plugins;

  colconBuildDepends = [
    ament_cmake
    eigen
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rmf_door_msgs
    rmf_lift_msgs
    rmf_traffic_ros2
    rmf_visualization_msgs
    rviz_common
    rviz_default_plugins
    rviz_rendering
  ];

  colconRunDepends = [
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rmf_door_msgs
    rmf_lift_msgs
    rmf_traffic_ros2
    rmf_visualization_msgs
    rviz_common
    rviz_default_plugins
    rviz_rendering
  ];

  colconTestDepends = [
    ament_cmake_uncrustify
    rmf_utils
  ];
}
