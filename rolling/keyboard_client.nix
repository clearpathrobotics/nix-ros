{
  ament_cmake,
  smacc2,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "keyboard_client";
  pkgFinal = final.rolling.keyboard_client;
  src = srcs.SMACC2.keyboard_client;

  colconBuildDepends = [
    ament_cmake
    smacc2
    std_msgs
  ];

  colconRunDepends = [
    smacc2
    std_msgs
  ];

  colconTestDepends = [
  ];
}
