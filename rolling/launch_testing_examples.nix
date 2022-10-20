{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  demo_nodes_cpp,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  rclpy,
  ros2bag,
  rosbag2_transport,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_testing_examples";
  pkgFinal = final.rolling.launch_testing_examples;
  src = srcs.examples.launch_testing_examples;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    demo_nodes_cpp
    launch
    launch_ros
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    rclpy
    ros2bag
    rosbag2_transport
    std_msgs
  ];
}
