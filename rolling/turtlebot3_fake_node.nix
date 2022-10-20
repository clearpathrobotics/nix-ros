{
  ament_cmake,
  geometry_msgs,
  nav_msgs,
  rclcpp,
  robot_state_publisher,
  sensor_msgs,
  tf2,
  tf2_msgs,
  turtlebot3_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_fake_node";
  pkgFinal = final.rolling.turtlebot3_fake_node;
  src = srcs.turtlebot3_simulations.turtlebot3_fake_node;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav_msgs
    rclcpp
    sensor_msgs
    tf2
    tf2_msgs
    turtlebot3_msgs
  ];

  colconRunDepends = [
    ament_cmake
    geometry_msgs
    nav_msgs
    rclcpp
    robot_state_publisher
    sensor_msgs
    tf2
    tf2_msgs
    turtlebot3_msgs
  ];

  colconTestDepends = [
  ];
}
