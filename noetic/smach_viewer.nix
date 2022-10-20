{
  catkin,
  cv_bridge,
  graphviz,
  gtk3,
  python3Packages,
  rostest,
  smach_msgs,
  smach_ros,
  xdot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smach_viewer";
  pkgFinal = final.noetic.smach_viewer;
  src = srcs.executive_smach_visualization.smach_viewer;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    cv_bridge
    graphviz
    gtk3
    python3Packages.pygobject3
    python3Packages.pyqt5
    python3Packages.rospkg
    python3Packages.sip_4
    python3Packages.wxPython_4_0
    smach_msgs
    smach_ros
    xdot
  ];

  colconTestDepends = [
  ];
}
