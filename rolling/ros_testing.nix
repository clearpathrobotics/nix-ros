{
  ament_cmake,
  ament_cmake_core,
  ament_cmake_export_dependencies,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  ros2test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_testing";
  pkgFinal = final.rolling.ros_testing;
  src = srcs.ros_testing.ros_testing;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_core
    ament_cmake_export_dependencies
  ];

  colconRunDepends = [
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    ros2test
  ];

  colconTestDepends = [
  ];
}
