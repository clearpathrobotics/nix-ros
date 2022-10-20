{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_python,
  ament_cmake_ros,
  opencv,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_geometry";
  pkgFinal = final.rolling.image_geometry;
  src = srcs.vision_opencv.image_geometry;

  colconBuildDepends = [
    ament_cmake_python
    ament_cmake_ros
    opencv
    sensor_msgs
  ];

  colconRunDepends = [
    opencv
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
  ];
}
