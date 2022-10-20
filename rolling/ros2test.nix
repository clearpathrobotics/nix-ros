{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  domain_coordinator,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  ros2cli,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2test";
  pkgFinal = final.rolling.ros2test;
  src = srcs.ros_testing.ros2test;

  colconBuildDepends = [
    launch
    launch_ros
    launch_testing
    launch_testing_ros
    ros2cli
  ];

  colconRunDepends = [
    domain_coordinator
    launch
    launch_ros
    launch_testing
    launch_testing_ros
    ros2cli
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
