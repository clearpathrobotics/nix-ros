{
  ament_copyright,
  python3,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "generate_parameter_library_py";
  pkgFinal = final.rolling.generate_parameter_library_py;
  src = srcs.generate_parameter_library.generate_parameter_library_py;

  colconBuildDepends = [
    python3
    python3Packages.jinja2
    python3Packages.typeguard
  ];

  colconRunDepends = [
    python3
    python3Packages.jinja2
    python3Packages.typeguard
  ];

  colconTestDepends = [
    ament_copyright
    python3Packages.pytest
  ];
}
