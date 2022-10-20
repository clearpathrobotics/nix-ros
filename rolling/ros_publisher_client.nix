{
  ament_cmake,
  smacc2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_publisher_client";
  pkgFinal = final.rolling.ros_publisher_client;
  src = srcs.SMACC2.ros_publisher_client;

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
