{
  ament_cmake,
  keyboard_client,
  multirole_sensor_client,
  rclcpp,
  ros_publisher_client,
  ros_timer_client,
  smacc2,
  sr_all_events_go,
  std_msgs,
  xterm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_three_some";
  pkgFinal = final.rolling.sm_three_some;
  src = srcs.SMACC2.sm_three_some;

  colconBuildDepends = [
    ament_cmake
    keyboard_client
    multirole_sensor_client
    rclcpp
    ros_publisher_client
    ros_timer_client
    smacc2
    sr_all_events_go
    std_msgs
  ];

  colconRunDepends = [
    keyboard_client
    multirole_sensor_client
    rclcpp
    ros_publisher_client
    ros_timer_client
    smacc2
    sr_all_events_go
    std_msgs
    xterm
  ];

  colconTestDepends = [
  ];
}
