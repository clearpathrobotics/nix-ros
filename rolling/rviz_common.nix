{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_lint_auto,
  geometry_msgs,
  message_filters,
  pluginlib,
  qt5,
  rclcpp,
  resource_retriever,
  rviz_ogre_vendor,
  rviz_rendering,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  tinyxml2_vendor,
  urdf,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_common";
  pkgFinal = final.rolling.rviz_common;
  src = srcs.rviz.rviz_common;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    tinyxml2_vendor
    urdf
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    tinyxml2_vendor
    urdf
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
