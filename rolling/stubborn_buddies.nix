{
  ament_cmake,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  rcutils,
  std_msgs,
  stubborn_buddies_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stubborn_buddies";
  pkgFinal = final.rolling.stubborn_buddies;
  src = srcs.stubborn_buddies.stubborn_buddies;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    rcutils
    std_msgs
    stubborn_buddies_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    rcutils
    std_msgs
    stubborn_buddies_msgs
  ];

  colconTestDepends = [
  ];
}
