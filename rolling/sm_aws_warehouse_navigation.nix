{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  bond,
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
  name = "sm_aws_warehouse_navigation";
  pkgFinal = final.rolling.sm_aws_warehouse_navigation;
  src = srcs.SMACC2.sm_aws_warehouse_navigation;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    bond
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
    bond
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
    ament_lint_auto
    ament_lint_common
  ];
}
