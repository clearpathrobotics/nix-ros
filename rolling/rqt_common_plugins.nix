{
  ament_cmake,
  rqt_action,
  rqt_bag,
  rqt_bag_plugins,
  rqt_console,
  rqt_graph,
  rqt_image_view,
  rqt_msg,
  rqt_plot,
  rqt_publisher,
  rqt_py_common,
  rqt_py_console,
  rqt_reconfigure,
  rqt_service_caller,
  rqt_shell,
  rqt_srv,
  rqt_topic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_common_plugins";
  pkgFinal = final.rolling.rqt_common_plugins;
  src = srcs.rqt_common_plugins.rqt_common_plugins;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    rqt_action
    rqt_bag
    rqt_bag_plugins
    rqt_console
    rqt_graph
    rqt_image_view
    rqt_msg
    rqt_plot
    rqt_publisher
    rqt_py_common
    rqt_py_console
    rqt_reconfigure
    rqt_service_caller
    rqt_shell
    rqt_srv
    rqt_topic
  ];

  colconTestDepends = [
  ];
}
