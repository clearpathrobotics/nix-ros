{
  catkin,
  geometry_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ess_imu_ros1_uart_driver";
  pkgFinal = final.noetic.ess_imu_ros1_uart_driver;
  src = srcs.ess_imu_ros1_uart_driver.ess_imu_ros1_uart_driver;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
