{
  catkin,
  cv_bridge,
  freeglut,
  glew,
  image_transport,
  marti_common_msgs,
  message_generation,
  message_runtime,
  pkg-config,
  pluginlib,
  qt5,
  rosapi,
  roscpp,
  rqt_gui,
  rqt_gui_cpp,
  std_srvs,
  swri_transform_util,
  swri_yaml_util,
  tf,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mapviz";
  pkgFinal = final.noetic.mapviz;
  src = srcs.mapviz.mapviz;

  colconBuildDepends = [
    catkin
    cv_bridge
    freeglut
    glew
    image_transport
    marti_common_msgs
    message_generation
    pkg-config
    pluginlib
    qt5.qtbase
    rosapi
    roscpp
    rqt_gui
    rqt_gui_cpp
    std_srvs
    swri_transform_util
    swri_yaml_util
    tf
    xorg.libXi
    xorg.libXmu
  ];

  colconRunDepends = [
    cv_bridge
    freeglut
    glew
    image_transport
    marti_common_msgs
    message_runtime
    pluginlib
    qt5.qtbase
    rosapi
    roscpp
    rqt_gui
    rqt_gui_cpp
    std_srvs
    swri_transform_util
    swri_yaml_util
    tf
    xorg.libXi
    xorg.libXmu
  ];

  colconTestDepends = [
  ];
}
