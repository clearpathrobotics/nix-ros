{
  catkin,
  controller_manager_msgs,
  python3Packages,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_controller_manager";
  pkgFinal = final.noetic.rqt_controller_manager;
  src = srcs.ros_control.rqt_controller_manager;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    controller_manager_msgs
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
