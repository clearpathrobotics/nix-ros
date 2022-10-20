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
  name = "sm_atomic_subscribers_performance_test";
  pkgFinal = final.rolling.sm_atomic_subscribers_performance_test;
  src = srcs.SMACC2.sm_atomic_subscribers_performance_test;

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
