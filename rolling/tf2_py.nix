{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  python_cmake_module,
  rclpy,
  rpyutils,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_py";
  pkgFinal = final.rolling.tf2_py;
  src = srcs.geometry2.tf2_py;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    python_cmake_module
    tf2
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rclpy
    rpyutils
    tf2
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
  ];
}
