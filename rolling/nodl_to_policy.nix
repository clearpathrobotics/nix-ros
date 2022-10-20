{
  ament_copyright,
  ament_flake8,
  ament_lint_auto,
  ament_mypy,
  ament_pep257,
  ament_pycodestyle,
  nodl_python,
  python3Packages,
  ros2cli,
  ros2nodl,
  ros2run,
  ros_testing,
  sros2,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nodl_to_policy";
  pkgFinal = final.rolling.nodl_to_policy;
  src = srcs.nodl_to_policy.nodl_to_policy;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    nodl_python
    python3Packages.argcomplete
    python3Packages.lxml
    ros2cli
    ros2nodl
    ros2run
    sros2
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_lint_auto
    ament_mypy
    ament_pep257
    ament_pycodestyle
    python3Packages.pytest
    python3Packages.pytest-mock
    ros_testing
    test_msgs
  ];
}
