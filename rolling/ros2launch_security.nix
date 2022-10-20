{
  ament_copyright,
  ament_flake8,
  ament_index_python,
  ament_pep257,
  demo_nodes_py,
  launch_ros,
  nodl_python,
  python3Packages,
  ros2launch,
  sros2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2launch_security";
  pkgFinal = final.rolling.ros2launch_security;
  src = srcs.ros2launch_security.ros2launch_security;

  colconBuildDepends = [
    ament_index_python
    nodl_python
    ros2launch
    sros2
  ];

  colconRunDepends = [
    ament_index_python
    nodl_python
    ros2launch
    sros2
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    demo_nodes_py
    launch_ros
    python3Packages.pytest
    ros2launch
    sros2
  ];
}
