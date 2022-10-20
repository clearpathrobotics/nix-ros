{
  catkin,
  cv_bridge,
  geometry_msgs,
  image_transport,
  qt5,
  rqt_gui,
  rqt_gui_cpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_image_view";
  pkgFinal = final.noetic.rqt_image_view;
  src = srcs.rqt_image_view.rqt_image_view;

  colconBuildDepends = [
    catkin
    cv_bridge
    geometry_msgs
    image_transport
    qt5.qtbase
    rqt_gui
    rqt_gui_cpp
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    image_transport
    rqt_gui
    rqt_gui_cpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
