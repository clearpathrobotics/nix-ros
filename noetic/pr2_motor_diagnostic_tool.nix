{
  catkin,
  ethercat_hardware,
  message_generation,
  message_runtime,
  pluginlib,
  pr2_controller_interface,
  pr2_mechanism_model,
  pr2_mechanism_msgs,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_motor_diagnostic_tool";
  pkgFinal = final.noetic.pr2_motor_diagnostic_tool;
  src = srcs.pr2_self_test.pr2_motor_diagnostic_tool;

  colconBuildDepends = [
    catkin
    ethercat_hardware
    message_generation
    pluginlib
    pr2_controller_interface
    pr2_mechanism_model
    pr2_mechanism_msgs
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconRunDepends = [
    ethercat_hardware
    message_runtime
    pluginlib
    pr2_controller_interface
    pr2_mechanism_model
    pr2_mechanism_msgs
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
