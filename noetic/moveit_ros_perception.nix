{
  catkin,
  cv_bridge,
  eigen,
  freeglut,
  glew,
  image_transport,
  libGL,
  libGLU,
  llvmPackages,
  message_filters,
  moveit_core,
  moveit_msgs,
  moveit_ros_occupancy_map_monitor,
  moveit_ros_planning,
  nodelet,
  object_recognition_msgs,
  pluginlib,
  rosconsole,
  roscpp,
  rosunit,
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
  pkgFinal = final.noetic.moveit_ros_perception;
  src = srcs.moveit.moveit_ros_perception;

  colconBuildDepends = [
    catkin
    cv_bridge
    eigen
    freeglut
    glew
    image_transport
    libGL
    libGLU
    llvmPackages.openmp
    message_filters
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    nodelet
    object_recognition_msgs
    pluginlib
    rosconsole
    roscpp
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
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    nodelet
    object_recognition_msgs
    pluginlib
    rosconsole
    roscpp
    sensor_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    urdf
  ];

  colconTestDepends = [
    rosunit
  ];
}
