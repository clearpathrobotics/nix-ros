{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sr_event_countdown";
  pkgFinal = final.rolling.sr_event_countdown;
  src = srcs.SMACC2.sr_event_countdown;

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
