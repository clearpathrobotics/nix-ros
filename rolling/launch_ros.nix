{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  composition_interfaces,
  launch,
  lifecycle_msgs,
  osrf_pycommon,
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_ros";
  pkgFinal = final.rolling.launch_ros;
  src = srcs.launch_ros.launch_ros;

  colconBuildDepends = [
    ament_index_python
    composition_interfaces
    launch
    lifecycle_msgs
    osrf_pycommon
    python3Packages.importlib-metadata
    python3Packages.pyyaml
    rclpy
  ];

  colconRunDepends = [
    ament_index_python
    composition_interfaces
    launch
    lifecycle_msgs
    osrf_pycommon
    python3Packages.importlib-metadata
    python3Packages.pyyaml
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
