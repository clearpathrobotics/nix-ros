{
  action_msgs,
  ament_cmake,
  gazebo,
  gazebo_plugins,
  gazebo_ros,
  multirole_sensor_client,
  nav2z_client,
  robot_state_publisher,
  ros_publisher_client,
  ros_timer_client,
  rosidl_default_generators,
  rosidl_default_runtime,
  smacc2,
  sr_all_events_go,
  sr_conditional,
  sr_event_countdown,
  std_msgs,
  tf2,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_dance_bot_strikes_back";
  pkgFinal = final.rolling.sm_dance_bot_strikes_back;
  src = srcs.SMACC2.sm_dance_bot_strikes_back;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    multirole_sensor_client
    nav2z_client
    robot_state_publisher
    ros_publisher_client
    ros_timer_client
    rosidl_default_generators
    smacc2
    sr_all_events_go
    sr_conditional
    sr_event_countdown
    std_msgs
    tf2
    visualization_msgs
  ];

  colconRunDepends = [
    action_msgs
    gazebo
    gazebo_plugins
    gazebo_ros
    multirole_sensor_client
    nav2z_client
    robot_state_publisher
    ros_publisher_client
    ros_timer_client
    rosidl_default_runtime
    smacc2
    sr_all_events_go
    sr_conditional
    sr_event_countdown
    std_msgs
    tf2
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
