{
  catkin,
  control_msgs,
  controller_manager_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rospy,
  rqt_gui,
  rqt_gui_py,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_joint_trajectory_controller";
  pkgFinal = final.noetic.rqt_joint_trajectory_controller;
  src = srcs.ros_controllers.rqt_joint_trajectory_controller;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    control_msgs
    controller_manager_msgs
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rospy
    rqt_gui
    rqt_gui_py
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
