{
  ament_acceleration,
  ament_cmake_core,
  ament_cmake_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_vitis";
  pkgFinal = final.rolling.ament_vitis;
  src = srcs.ament_vitis.ament_vitis;

  colconBuildDepends = [
    ament_acceleration
    ament_cmake_core
    ament_cmake_ros
  ];

  colconRunDepends = [
    ament_acceleration
    ament_cmake_core
    ament_cmake_ros
  ];

  colconTestDepends = [
  ];
}
