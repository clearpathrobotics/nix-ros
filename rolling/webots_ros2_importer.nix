{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  builtin_interfaces,
  python3Packages,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_importer";
  pkgFinal = final.rolling.webots_ros2_importer;
  src = srcs.webots_ros2.webots_ros2_importer;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    builtin_interfaces
    python3Packages.lark
    python3Packages.pycollada
    xacro
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.numpy
    python3Packages.pillow
    python3Packages.pycodestyle
    python3Packages.pytest
  ];
}
