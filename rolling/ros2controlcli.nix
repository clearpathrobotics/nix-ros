{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  controller_manager,
  controller_manager_msgs,
  python3Packages,
  rclpy,
  ros2cli,
  ros2node,
  ros2param,
  rosidl_runtime_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2controlcli";
  pkgFinal = final.rolling.ros2controlcli;
  src = srcs.ros2_control.ros2controlcli;

  colconBuildDepends = [
    controller_manager
    controller_manager_msgs
    rclpy
    ros2cli
    ros2node
    ros2param
  ];

  colconRunDepends = [
    controller_manager
    controller_manager_msgs
    python3Packages.pygraphviz
    rclpy
    ros2cli
    ros2node
    ros2param
    rosidl_runtime_py
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
  ];
}
