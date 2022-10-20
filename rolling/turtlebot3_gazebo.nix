{
  ament_cmake,
  gazebo_ros_pkgs,
  geometry_msgs,
  nav_msgs,
  rclcpp,
  sensor_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_gazebo";
  pkgFinal = final.rolling.turtlebot3_gazebo;
  src = srcs.turtlebot3_simulations.turtlebot3_gazebo;

  colconBuildDepends = [
    ament_cmake
    gazebo_ros_pkgs
    geometry_msgs
    nav_msgs
    rclcpp
    sensor_msgs
    tf2
  ];

  colconRunDepends = [
    gazebo_ros_pkgs
    geometry_msgs
    nav_msgs
    rclcpp
    sensor_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
