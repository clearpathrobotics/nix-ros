{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  ament_xmllint,
  launch,
  launch_testing,
  launch_testing_ros,
  python3Packages,
  ros2cli,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2pkg";
  pkgFinal = final.rolling.ros2pkg;
  src = srcs.ros2cli.ros2pkg;

  colconBuildDepends = [
    python3Packages.importlib-resources
    ros2cli
  ];

  colconRunDepends = [
    ament_copyright
    ament_index_python
    python3Packages.catkin-pkg
    python3Packages.empy
    python3Packages.importlib-resources
    python3Packages.setuptools
    ros2cli
  ];

  colconTestDepends = [
    ament_flake8
    ament_pep257
    ament_xmllint
    launch
    launch_testing
    launch_testing_ros
    python3Packages.pytest
    python3Packages.pytest-timeout
  ];
}
