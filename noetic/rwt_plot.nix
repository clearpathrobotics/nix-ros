{
  catkin,
  geometry_msgs,
  rosbridge_server,
  rospy,
  rostest,
  roswww,
  rwt_utils_3rdparty,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_plot";
  pkgFinal = final.noetic.rwt_plot;
  src = srcs.visualization_rwt.rwt_plot;

  colconBuildDepends = [
    catkin
    geometry_msgs
    rosbridge_server
    rospy
    roswww
    rwt_utils_3rdparty
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosbridge_server
    rospy
    roswww
    rwt_utils_3rdparty
    std_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
