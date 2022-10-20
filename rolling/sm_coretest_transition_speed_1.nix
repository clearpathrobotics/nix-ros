{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_coretest_transition_speed_1";
  pkgFinal = final.rolling.sm_coretest_transition_speed_1;
  src = srcs.SMACC2.sm_coretest_transition_speed_1;

  colconBuildDepends = [
    ament_cmake
    smacc2
  ];

  colconRunDepends = [
    smacc2
  ];

  colconTestDepends = [
  ];
}
