{
  catkin,
  cob_supported_robots,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_calibration_data";
  pkgFinal = final.noetic.cob_calibration_data;
  src = srcs.cob_calibration_data.cob_calibration_data;

  colconBuildDepends = [
    catkin
    cob_supported_robots
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
