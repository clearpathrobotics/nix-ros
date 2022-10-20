{
  python3Packages,
  rclpy,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_controllers_test_nodes";
  pkgFinal = final.rolling.ros2_controllers_test_nodes;
  src = srcs.ros2_controllers.ros2_controllers_test_nodes;

  colconBuildDepends = [
    rclpy
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    rclpy
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    python3Packages.pytest
  ];
}
