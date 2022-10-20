{
  ament_flake8,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  ament_mypy,
  nodl_python,
  python3Packages,
  ros2cli,
  ros2pkg,
  ros2run,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2nodl";
  pkgFinal = final.rolling.ros2nodl;
  src = srcs.nodl.ros2nodl;

  colconBuildDepends = [
    ament_index_python
    nodl_python
    python3Packages.argcomplete
    ros2cli
    ros2pkg
    ros2run
  ];

  colconRunDepends = [
    ament_index_python
    nodl_python
    python3Packages.argcomplete
    ros2cli
    ros2pkg
    ros2run
  ];

  colconTestDepends = [
    ament_flake8
    ament_lint_auto
    ament_lint_common
    ament_mypy
    python3Packages.pytest
    python3Packages.pytest-mock
  ];
}
