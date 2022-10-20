{
  ament_copyright,
  ament_xmllint,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2topic,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_publisher";
  pkgFinal = final.rolling.joint_state_publisher;
  src = srcs.joint_state_publisher.joint_state_publisher;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_xmllint
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    ros2topic
  ];
}
