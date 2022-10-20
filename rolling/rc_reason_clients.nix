{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  python3Packages,
  rc_reason_msgs,
  rclpy,
  ros2pkg,
  tf2_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_reason_clients";
  pkgFinal = final.rolling.rc_reason_clients;
  src = srcs.rc_reason_clients.rc_reason_clients;

  colconBuildDepends = [
    geometry_msgs
    python3Packages.requests
    rc_reason_msgs
    rclpy
    ros2pkg
    tf2_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.requests
    rc_reason_msgs
    rclpy
    ros2pkg
    tf2_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
