{
  axis_camera,
  catkin,
  cv_bridge,
  diagnostic_aggregator,
  diagnostic_msgs,
  diagnostic_updater,
  git,
  iproute2,
  jsk_gui_msgs,
  jsk_network_tools,
  jsk_topic_tools,
  pr2_computer_monitor,
  python3Packages,
  pythonPackages,
  rosbag,
  rosemacs,
  rosgraph_msgs,
  roslint,
  rospy,
  rostest,
  rqt_reconfigure,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_tools";
  pkgFinal = final.noetic.jsk_tools;
  src = srcs.jsk_common.jsk_tools;

  colconBuildDepends = [
    catkin
    git
    rosgraph_msgs
  ];

  colconRunDepends = [
    axis_camera
    cv_bridge
    diagnostic_aggregator
    diagnostic_msgs
    diagnostic_updater
    iproute2
    jsk_gui_msgs
    jsk_network_tools
    jsk_topic_tools
    pr2_computer_monitor
    python3Packages.PyGithub
    python3Packages.colorama
    python3Packages.progressbar
    python3Packages.requests
    python3Packages.tabulate
    python3Packages.texttable
    pythonPackages.percol
    pythonPackages.tabulate
    rosbag
    rosemacs
    rosgraph_msgs
    rospy
    rqt_reconfigure
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
