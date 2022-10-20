{
  python3Packages,
  rcl_interfaces,
  rclpy,
  ros2action,
  ros2cli,
  ros2node,
  ros2param,
  ros2topic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "system_fingerprint";
  pkgFinal = final.rolling.system_fingerprint;
  src = srcs.system_fingerprint.system_fingerprint;

  colconBuildDepends = [
    rcl_interfaces
    rclpy
    ros2action
    ros2cli
    ros2node
    ros2param
    ros2topic
  ];

  colconRunDepends = [
    python3Packages.GitPython
    rcl_interfaces
    rclpy
    ros2action
    ros2cli
    ros2node
    ros2param
    ros2topic
  ];

  colconTestDepends = [
  ];
}
