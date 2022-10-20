{
  ament_cmake,
  eg_conditional_generator,
  keyboard_client,
  smacc2,
  std_msgs,
  xterm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_pubsub_1";
  pkgFinal = final.rolling.sm_pubsub_1;
  src = srcs.SMACC2.sm_pubsub_1;

  colconBuildDepends = [
    ament_cmake
    eg_conditional_generator
    keyboard_client
    smacc2
    std_msgs
  ];

  colconRunDepends = [
    eg_conditional_generator
    keyboard_client
    smacc2
    std_msgs
    xterm
  ];

  colconTestDepends = [
  ];
}
