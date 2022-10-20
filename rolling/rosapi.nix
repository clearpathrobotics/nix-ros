{
  ament_cmake_pytest,
  ament_cmake_ros,
  builtin_interfaces,
  geometry_msgs,
  rcl_interfaces,
  rclpy,
  rmw_dds_common,
  ros2node,
  ros2param,
  ros2pkg,
  ros2service,
  ros2topic,
  rosapi_msgs,
  rosbridge_library,
  sensor_msgs,
  shape_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosapi";
  pkgFinal = final.rolling.rosapi;
  src = srcs.rosbridge_suite.rosapi;

  colconBuildDepends = [
    ament_cmake_ros
  ];

  colconRunDepends = [
    builtin_interfaces
    rcl_interfaces
    rclpy
    ros2node
    ros2param
    ros2pkg
    ros2service
    ros2topic
    rosapi_msgs
    rosbridge_library
  ];

  colconTestDepends = [
    ament_cmake_pytest
    geometry_msgs
    rmw_dds_common
    sensor_msgs
    shape_msgs
  ];
}
