{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_sdk";
  pkgFinal = final.rolling.dynamixel_sdk;
  src = srcs.dynamixel_sdk.dynamixel_sdk;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
