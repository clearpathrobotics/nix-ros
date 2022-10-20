{
  catkin,
  diagnostic_msgs,
  fkie_master_discovery,
  fkie_multimaster_msgs,
  python3Packages,
  roslaunch,
  rospy,
  rostest,
  screen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fkie_node_manager_daemon";
  pkgFinal = final.noetic.fkie_node_manager_daemon;
  src = srcs.fkie_multimaster.fkie_node_manager_daemon;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    fkie_multimaster_msgs
    python3Packages.catkin-pkg
    roslaunch
    rospy
    screen
  ];

  colconRunDepends = [
    diagnostic_msgs
    fkie_master_discovery
    fkie_multimaster_msgs
    python3Packages.grpcio
    python3Packages.grpcio-tools
    python3Packages.psutil
    python3Packages.rospkg
    python3Packages.ruamel_yaml
    roslaunch
    rospy
    screen
  ];

  colconTestDepends = [
    rostest
  ];
}
