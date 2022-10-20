{
  catkin,
  cv_bridge,
  image_publisher,
  image_view2,
  jsk_gui_msgs,
  message_generation,
  message_runtime,
  mk,
  python3Packages,
  qt_gui_py_common,
  resource_retriever,
  rosbuild,
  roslaunch,
  rostest,
  rqt_gui,
  rqt_gui_py,
  rqt_image_view,
  rqt_plot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_rqt_plugins";
  pkgFinal = final.noetic.jsk_rqt_plugins;
  src = srcs.jsk_visualization.jsk_rqt_plugins;

  colconBuildDepends = [
    catkin
    image_view2
    message_generation
    mk
    rosbuild
  ];

  colconRunDepends = [
    cv_bridge
    image_publisher
    image_view2
    jsk_gui_msgs
    message_runtime
    python3Packages.scikitlearn
    qt_gui_py_common
    resource_retriever
    rqt_gui
    rqt_gui_py
    rqt_image_view
    rqt_plot
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
