{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_timer_client";
  pkgFinal = final.rolling.ros_timer_client;
  src = srcs.SMACC2.ros_timer_client;

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
