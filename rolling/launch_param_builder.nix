{
  ament_copyright,
  ament_index_python,
  python3Packages,
  rclpy,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "launch_param_builder";
  pkgFinal = final.rolling.launch_param_builder;
  src = srcs.launch_param_builder.launch_param_builder;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.pyyaml
    rclpy
    xacro
  ];

  colconTestDepends = [
    ament_copyright
    python3Packages.pytest
  ];
}
