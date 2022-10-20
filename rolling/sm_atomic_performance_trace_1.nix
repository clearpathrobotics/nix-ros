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
  name = "sm_atomic_performance_trace_1";
  pkgFinal = final.rolling.sm_atomic_performance_trace_1;
  src = srcs.SMACC2.sm_atomic_performance_trace_1;

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
