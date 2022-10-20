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
  name = "sm_branching";
  pkgFinal = final.rolling.sm_branching;
  src = srcs.SMACC2.sm_branching;

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
