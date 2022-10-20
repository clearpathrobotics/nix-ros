{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  image_transport,
  pkg-config,
  rclcpp,
  ros_gz_bridge,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz_image";
  pkgFinal = final.rolling.ros_gz_image;
  src = srcs.ros_ign.ros_gz_image;

  colconBuildDepends = [
    ament_cmake
    image_transport
    pkg-config
    rclcpp
    ros_gz_bridge
    sensor_msgs
  ];

  colconRunDepends = [
    image_transport
    rclcpp
    ros_gz_bridge
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
