{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  ros2cli,
  rosbag2_py,
  rosbag2_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2bag";
  pkgFinal = final.rolling.ros2bag;
  src = srcs.rosbag2.ros2bag;

  colconBuildDepends = [
    ros2cli
    rosbag2_py
    rosbag2_transport
  ];

  colconRunDepends = [
    ros2cli
    rosbag2_py
    rosbag2_transport
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    launch_testing
    launch_testing_ros
    python3Packages.pytest
  ];
}
