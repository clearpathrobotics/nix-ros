{
  catkin,
  diagnostic_aggregator,
  diagnostic_msgs,
  rosbridge_server,
  rostest,
  roswww,
  rwt_plot,
  rwt_utils_3rdparty,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_robot_monitor";
  pkgFinal = final.noetic.rwt_robot_monitor;
  src = srcs.visualization_rwt.rwt_robot_monitor;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    rosbridge_server
    roswww
    rwt_plot
    rwt_utils_3rdparty
  ];

  colconRunDepends = [
    diagnostic_msgs
    rosbridge_server
    roswww
    rwt_plot
    rwt_utils_3rdparty
  ];

  colconTestDepends = [
    diagnostic_aggregator
    rostest
  ];
}
