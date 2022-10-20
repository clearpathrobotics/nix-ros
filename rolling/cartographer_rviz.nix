{
  abseil-cpp,
  ament_cmake,
  boost,
  cartographer,
  cartographer_ros,
  cartographer_ros_msgs,
  eigen,
  pluginlib,
  rclcpp,
  rviz_common,
  rviz_ogre_vendor,
  rviz_rendering,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartographer_rviz";
  pkgFinal = final.rolling.cartographer_rviz;
  src = srcs.cartographer_ros.cartographer_rviz;

  colconBuildDepends = [
    abseil-cpp
    ament_cmake
    boost
    cartographer
    cartographer_ros
    cartographer_ros_msgs
    eigen
    pluginlib
    rclcpp
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
  ];

  colconRunDepends = [
    abseil-cpp
    boost
    cartographer
    cartographer_ros
    cartographer_ros_msgs
    eigen
    pluginlib
    rclcpp
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
  ];

  colconTestDepends = [
  ];
}
