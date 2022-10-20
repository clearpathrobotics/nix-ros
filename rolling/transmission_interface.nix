{
  ament_cmake,
  ament_cmake_gmock,
  hardware_interface,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "transmission_interface";
  pkgFinal = final.rolling.transmission_interface;
  src = srcs.ros2_control.transmission_interface;

  colconBuildDepends = [
    ament_cmake
    hardware_interface
    pluginlib
  ];

  colconRunDepends = [
    hardware_interface
    pluginlib
  ];

  colconTestDepends = [
    ament_cmake_gmock
  ];
}
