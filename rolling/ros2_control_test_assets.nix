{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_control_test_assets";
  pkgFinal = final.rolling.ros2_control_test_assets;
  src = srcs.ros2_control.ros2_control_test_assets;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
