{
  python3Packages,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdfdom_py";
  pkgFinal = final.rolling.urdfdom_py;
  src = srcs.urdf_parser_py.urdfdom_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.lxml
    python3Packages.pyyaml
    rclpy
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
