{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  ament_xmllint,
  python3Packages,
  rosidl_parser,
  std_msgs,
  std_srvs,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_runtime_py";
  pkgFinal = final.rolling.rosidl_runtime_py;
  src = srcs.rosidl_runtime_py.rosidl_runtime_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.numpy
    python3Packages.pyyaml
    rosidl_parser
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    ament_xmllint
    python3Packages.pytest
    std_msgs
    std_srvs
    test_msgs
  ];
}
