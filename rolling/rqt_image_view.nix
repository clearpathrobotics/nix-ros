{
  ament_cmake,
  cv_bridge,
  geometry_msgs,
  image_transport,
  qt5,
  qt_gui_cpp,
  rclcpp,
  rqt_gui,
  rqt_gui_cpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_image_view";
  pkgFinal = final.rolling.rqt_image_view;
  src = srcs.rqt_image_view.rqt_image_view;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    geometry_msgs
    image_transport
    qt5.qtbase
    qt_gui_cpp
    rclcpp
    rqt_gui
    rqt_gui_cpp
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    image_transport
    qt_gui_cpp
    rclcpp
    rqt_gui
    rqt_gui_cpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
