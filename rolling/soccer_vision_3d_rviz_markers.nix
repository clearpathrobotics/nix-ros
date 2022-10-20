{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  python3Packages,
  rclpy,
  soccer_vision_3d_msgs,
  soccer_vision_attribute_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_vision_3d_rviz_markers";
  pkgFinal = final.rolling.soccer_vision_3d_rviz_markers;
  src = srcs.soccer_vision_3d_rviz_markers.soccer_vision_3d_rviz_markers;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
    soccer_vision_3d_msgs
    soccer_vision_attribute_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
  ];
}
