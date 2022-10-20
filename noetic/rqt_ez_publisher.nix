{
  catkin,
  geometry_msgs,
  python3Packages,
  rospy,
  rostest,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  sensor_msgs,
  tf,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_ez_publisher";
  pkgFinal = final.noetic.rqt_ez_publisher;
  src = srcs.rqt_ez_publisher.rqt_ez_publisher;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
    rostest
  ];

  colconRunDepends = [
    geometry_msgs
    rospy
    rqt_gui
    rqt_gui_py
    rqt_py_common
    tf
    tf2_msgs
  ];

  colconTestDepends = [
    sensor_msgs
  ];
}
