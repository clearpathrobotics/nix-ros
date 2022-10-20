{
  catkin,
  cmake_modules,
  cv_bridge,
  eigen,
  geometry_msgs,
  image_transport,
  libGL,
  libGLU,
  pluginlib,
  qt4,
  rviz,
  std_msgs,
  view_controller_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_animated_view_controller";
  pkgFinal = final.noetic.rviz_animated_view_controller;
  src = srcs.rviz_animated_view_controller.rviz_animated_view_controller;

  colconBuildDepends = [
    catkin
    cmake_modules
    cv_bridge
    eigen
    geometry_msgs
    image_transport
    libGL
    libGLU
    pluginlib
    qt4
    rviz
    std_msgs
    view_controller_msgs
  ];

  colconRunDepends = [
    cmake_modules
    cv_bridge
    eigen
    geometry_msgs
    image_transport
    libGL
    libGLU
    pluginlib
    qt4
    rviz
    std_msgs
    view_controller_msgs
  ];

  colconTestDepends = [
  ];
}
