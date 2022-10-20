{
  control_msgs,
  controller_manager_msgs,
  python3Packages,
  python_qt_binding,
  qt_gui,
  rclpy,
  rqt_gui,
  rqt_gui_py,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_joint_trajectory_controller";
  pkgFinal = final.rolling.rqt_joint_trajectory_controller;
  src = srcs.ros2_controllers.rqt_joint_trajectory_controller;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    control_msgs
    controller_manager_msgs
    python3Packages.rospkg
    python_qt_binding
    qt_gui
    rclpy
    rqt_gui
    rqt_gui_py
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
