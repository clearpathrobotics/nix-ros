{
  catkin,
  diagnostic_msgs,
  dynamic_reconfigure,
  fkie_master_discovery,
  fkie_master_sync,
  fkie_multimaster_msgs,
  fkie_node_manager_daemon,
  python3Packages,
  python_qt_binding,
  rosgraph,
  roslaunch,
  roslib,
  rosmsg,
  rospy,
  rosservice,
  rqt_gui,
  rqt_reconfigure,
  screen,
  xterm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_node_manager";
  pkgFinal = final.noetic.fkie_node_manager;
  src = srcs.fkie_multimaster.fkie_node_manager;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    fkie_master_discovery
    fkie_multimaster_msgs
    fkie_node_manager_daemon
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    diagnostic_msgs
    dynamic_reconfigure
    fkie_master_discovery
    fkie_master_sync
    fkie_multimaster_msgs
    fkie_node_manager_daemon
    python3Packages.docutils
    python3Packages.paramiko
    python3Packages.pycryptodomex
    python3Packages.pyqt5_with_qtwebkit
    python3Packages.ruamel_yaml
    python_qt_binding
    rosgraph
    roslaunch
    roslib
    rosmsg
    rospy
    rosservice
    rqt_gui
    rqt_reconfigure
    screen
    xterm
  ];

  colconTestDepends = [
  ];
}
