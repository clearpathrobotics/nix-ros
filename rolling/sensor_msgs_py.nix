{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sensor_msgs_py";
  pkgFinal = final.rolling.sensor_msgs_py;
  src = srcs.common_interfaces.sensor_msgs_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.numpy
    sensor_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
