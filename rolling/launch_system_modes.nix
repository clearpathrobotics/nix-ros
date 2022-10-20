{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  launch,
  osrf_pycommon,
  python3Packages,
  rclpy,
  system_modes_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_system_modes";
  pkgFinal = final.rolling.launch_system_modes;
  src = srcs.system_modes.launch_system_modes;

  colconBuildDepends = [
    ament_index_python
    launch
    osrf_pycommon
    python3Packages.importlib-metadata
    python3Packages.pyyaml
    rclpy
    system_modes_msgs
  ];

  colconRunDepends = [
    ament_index_python
    launch
    osrf_pycommon
    python3Packages.importlib-metadata
    python3Packages.pyyaml
    rclpy
    system_modes_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
