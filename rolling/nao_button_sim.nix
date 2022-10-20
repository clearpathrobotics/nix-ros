{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  nao_sensor_msgs,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nao_button_sim";
  pkgFinal = final.rolling.nao_button_sim;
  src = srcs.nao_button_sim.nao_button_sim;

  colconBuildDepends = [
    nao_sensor_msgs
  ];

  colconRunDepends = [
    nao_sensor_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
