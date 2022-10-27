{
  ament_cmake,
  eigen,
  rclcpp_lifecycle,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kinematics_interface";
  pkgFinal = final.rolling.kinematics_interface;
  src = srcs.kinematics_interface.kinematics_interface;

  colconBuildDepends = [
    ament_cmake
    eigen
    rclcpp_lifecycle
  ];

  colconRunDepends = [
    eigen
    rclcpp_lifecycle
  ];

  colconTestDepends = [
  ];
}
