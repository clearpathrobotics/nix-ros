{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rcgcd_spl_14,
  rcgcd_spl_14_conversion,
  rcgcrd_spl_4,
  rcgcrd_spl_4_conversion,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gc_spl_2022";
  pkgFinal = final.rolling.gc_spl_2022;
  src = srcs.gc_spl.gc_spl_2022;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rcgcd_spl_14
    rcgcd_spl_14_conversion
    rcgcrd_spl_4
    rcgcrd_spl_4_conversion
    rclpy
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
