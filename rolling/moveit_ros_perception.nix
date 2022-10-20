{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  cv_bridge,
  eigen,
  freeglut,
  glew,
  image_transport,
  libGL,
  libGLU,
  llvmPackages,
  message_filters,
  moveit_common,
  moveit_core,
  moveit_msgs,
  moveit_ros_occupancy_map_monitor,
  moveit_ros_planning,
  object_recognition_msgs,
  pluginlib,
  rclcpp,
  sensor_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_perception";
  pkgFinal = final.rolling.moveit_ros_perception;
  src = srcs.moveit.moveit_ros_perception;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    eigen
    freeglut
    glew
    image_transport
    libGL
    libGLU
    llvmPackages.openmp
    message_filters
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    object_recognition_msgs
    pluginlib
    rclcpp
    sensor_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    urdf
  ];

  colconRunDepends = [
    cv_bridge
    freeglut
    glew
    image_transport
    libGL
    libGLU
    llvmPackages.openmp
    message_filters
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    object_recognition_msgs
    pluginlib
    rclcpp
    sensor_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    urdf
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
