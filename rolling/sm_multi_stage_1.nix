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
  name = "sm_multi_stage_1";
  pkgFinal = final.rolling.sm_multi_stage_1;
  src = srcs.SMACC2.sm_multi_stage_1;

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
    xterm
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
