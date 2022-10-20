{
  graphviz,
  python3Packages,
  rclpy,
  tf2_msgs,
  tf2_py,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_tools";
  pkgFinal = final.rolling.tf2_tools;
  src = srcs.geometry2.tf2_tools;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    graphviz
    python3Packages.pyyaml
    rclpy
    tf2_msgs
    tf2_py
    tf2_ros_py
  ];

  colconTestDepends = [
  ];
}
