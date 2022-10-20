{
  ament_cmake,
  ros_timer_client,
  smacc2,
  xterm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_atomic";
  pkgFinal = final.rolling.sm_atomic;
  src = srcs.SMACC2.sm_atomic;

  colconBuildDepends = [
    ament_cmake
    ros_timer_client
    smacc2
  ];

  colconRunDepends = [
    ros_timer_client
    smacc2
    xterm
  ];

  colconTestDepends = [
  ];
}
