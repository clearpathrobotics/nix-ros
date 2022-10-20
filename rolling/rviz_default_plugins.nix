{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  geometry_msgs,
  ignition_math6_vendor,
  image_transport,
  interactive_markers,
  laser_geometry,
  map_msgs,
  nav_msgs,
  pluginlib,
  qt5,
  rclcpp,
  resource_retriever,
  rviz_common,
  rviz_ogre_vendor,
  rviz_rendering,
  rviz_rendering_tests,
  rviz_visual_testing_framework,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_default_plugins";
  pkgFinal = final.rolling.rviz_default_plugins;
  src = srcs.rviz.rviz_default_plugins;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    ignition_math6_vendor
    image_transport
    interactive_markers
    laser_geometry
    map_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    tf2
    tf2_geometry_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    ignition_math6_vendor
    image_transport
    interactive_markers
    laser_geometry
    map_msgs
    nav_msgs
    pluginlib
    qt5.qtbase
    rclcpp
    resource_retriever
    rviz_common
    rviz_ogre_vendor
    rviz_rendering
    tf2
    tf2_geometry_msgs
    tf2_ros
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_index_cpp
    ament_lint_auto
    rviz_rendering_tests
    rviz_visual_testing_framework
  ];
}
