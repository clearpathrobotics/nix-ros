{
  ament_cmake,
  assimp,
  boost,
  gazebo_dev,
  gazebo_msgs,
  gazebo_ros,
  image_tools,
  nav2z_client,
  rclcpp,
  robot_localization,
  ros_timer_client,
  rviz_assimp_vendor,
  rviz_ogre_vendor,
  sensor_msgs,
  smacc2,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sm_husky_barrel_search_1";
  pkgFinal = final.rolling.sm_husky_barrel_search_1;
  src = srcs.SMACC2.sm_husky_barrel_search_1;

  colconBuildDepends = [
    ament_cmake
    assimp
    boost
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    image_tools
    nav2z_client
    rclcpp
    robot_localization
    ros_timer_client
    rviz_assimp_vendor
    rviz_ogre_vendor
    sensor_msgs
    smacc2
    std_msgs
  ];

  colconRunDepends = [
    assimp
    boost
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    image_tools
    nav2z_client
    rclcpp
    robot_localization
    ros_timer_client
    rviz_assimp_vendor
    rviz_ogre_vendor
    sensor_msgs
    smacc2
    std_msgs
  ];

  colconTestDepends = [
  ];
}
