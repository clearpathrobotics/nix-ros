{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  geometry_msgs,
  launch,
  launch_ros,
  python3Packages,
  rclpy,
  tf2_ros,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtle_tf2_py";
  pkgFinal = final.rolling.turtle_tf2_py;
  src = srcs.geometry_tutorials.turtle_tf2_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    geometry_msgs
    launch
    launch_ros
    python3Packages.numpy
    rclpy
    tf2_ros
    turtlesim
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
