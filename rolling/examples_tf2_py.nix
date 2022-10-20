{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  launch_ros,
  python3Packages,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_tf2_py";
  pkgFinal = final.rolling.examples_tf2_py;
  src = srcs.geometry2.examples_tf2_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    launch_ros
    tf2_ros_py
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
