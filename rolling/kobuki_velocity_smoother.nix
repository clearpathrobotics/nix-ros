{
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_flake8,
  ament_cmake_lint_cmake,
  ament_cmake_pep257,
  ament_cmake_ros,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_lint_auto,
  ecl_build,
  geometry_msgs,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  nav_msgs,
  python3Packages,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  ros2test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_velocity_smoother";
  pkgFinal = final.rolling.kobuki_velocity_smoother;
  src = srcs.kobuki_velocity_smoother.kobuki_velocity_smoother;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    geometry_msgs
    nav_msgs
    rcl_interfaces
    rclcpp
    rclcpp_components
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    rcl_interfaces
    rclcpp
    rclcpp_components
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_flake8
    ament_cmake_lint_cmake
    ament_cmake_pep257
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    python3Packages.matplotlib
    ros2test
  ];
}
