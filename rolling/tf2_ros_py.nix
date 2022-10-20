{
  geometry_msgs,
  python3Packages,
  rclpy,
  sensor_msgs,
  std_msgs,
  tf2_msgs,
  tf2_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_ros_py";
  pkgFinal = final.rolling.tf2_ros_py;
  src = srcs.geometry2.tf2_ros_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
    rclpy
    sensor_msgs
    std_msgs
    tf2_msgs
    tf2_py
  ];

  colconTestDepends = [
    python3Packages.pytest
    sensor_msgs
  ];
}
