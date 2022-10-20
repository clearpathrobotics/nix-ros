{
  ament_cmake,
  smacc2,
  smacc2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sr_all_events_go";
  pkgFinal = final.rolling.sr_all_events_go;
  src = srcs.SMACC2.sr_all_events_go;

  colconBuildDepends = [
    ament_cmake
    smacc2
    smacc2_msgs
  ];

  colconRunDepends = [
    smacc2
    smacc2_msgs
  ];

  colconTestDepends = [
  ];
}
