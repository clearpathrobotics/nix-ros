{
  assimp,
  catkin,
  cmake_modules,
  eigen,
  geometry_msgs,
  image_transport,
  interactive_markers,
  laser_geometry,
  libGL,
  libGLU,
  libyamlcpp,
  map_msgs,
  media_export,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  ogre1_9,
  pluginlib,
  python_qt_binding,
  qt5,
  resource_retriever,
  rosconsole,
  roscpp,
  roslib,
  rospy,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_geometry_msgs,
  tf2_ros,
  tinyxml-2,
  urdf,
  urdfdom,
  urdfdom-headers,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz";
  pkgFinal = final.noetic.rviz;
  src = srcs.rviz.rviz;

  colconBuildDepends = [
    assimp
    catkin
    cmake_modules
    eigen
    geometry_msgs
    image_transport
    interactive_markers
    laser_geometry
    libGL
    libGLU
    libyamlcpp
    map_msgs
    message_filters
    message_generation
    nav_msgs
    ogre1_9
    pluginlib
    python_qt_binding
    qt5.qtbase
    resource_retriever
    rosconsole
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    tinyxml-2
    urdf
    urdfdom
    urdfdom-headers
    visualization_msgs
  ];

  colconRunDepends = [
    assimp
    geometry_msgs
    image_transport
    interactive_markers
    laser_geometry
    libGL
    libGLU
    libyamlcpp
    map_msgs
    media_export
    message_filters
    message_runtime
    nav_msgs
    ogre1_9
    pluginlib
    python_qt_binding
    qt5.qtbase
    resource_retriever
    rosconsole
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    tinyxml-2
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
