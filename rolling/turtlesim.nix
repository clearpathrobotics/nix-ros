{
  ament_cmake,
  ament_index_cpp,
  geometry_msgs,
  qt5,
  rclcpp,
  rclcpp_action,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlesim";
  pkgFinal = final.rolling.turtlesim;
  src = srcs.turtlesim.turtlesim;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    geometry_msgs
    qt5.qtbase
    rclcpp
    rclcpp_action
    rosidl_default_generators
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    ament_index_cpp
    geometry_msgs
    qt5.qtbase
    rclcpp
    rclcpp_action
    rosidl_default_runtime
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
