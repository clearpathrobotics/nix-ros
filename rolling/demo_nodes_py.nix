{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  example_interfaces,
  python3Packages,
  rclpy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "demo_nodes_py";
  pkgFinal = final.rolling.demo_nodes_py;
  src = srcs.demos.demo_nodes_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    example_interfaces
    rclpy
    std_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
