{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  launch,
  launch_ros,
  launch_xml,
  launch_yaml,
  python3Packages,
  ros2cli,
  ros2pkg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2launch";
  pkgFinal = final.rolling.ros2launch;
  src = srcs.launch_ros.ros2launch;

  colconBuildDepends = [
    ament_index_python
    launch
    launch_ros
    ros2cli
    ros2pkg
  ];

  colconRunDepends = [
    ament_index_python
    launch
    launch_ros
    launch_xml
    launch_yaml
    ros2cli
    ros2pkg
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
