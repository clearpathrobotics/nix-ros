{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rosidl_parser,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_pycommon";
  pkgFinal = final.rolling.rosidl_pycommon;
  src = srcs.rosidl.rosidl_pycommon;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rosidl_parser
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
