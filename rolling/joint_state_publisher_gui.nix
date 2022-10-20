{
  joint_state_publisher,
  python_qt_binding,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_publisher_gui";
  pkgFinal = final.rolling.joint_state_publisher_gui;
  src = srcs.joint_state_publisher.joint_state_publisher_gui;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    joint_state_publisher
    python_qt_binding
    rclpy
  ];

  colconTestDepends = [
  ];
}
