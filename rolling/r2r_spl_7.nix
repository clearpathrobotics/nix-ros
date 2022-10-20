{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rclpy,
  splsm_7_conversion,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "r2r_spl_7";
  pkgFinal = final.rolling.r2r_spl_7;
  src = srcs.r2r_spl.r2r_spl_7;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
    splsm_7_conversion
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
