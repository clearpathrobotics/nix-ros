{
  ament_cmake,
  ament_cmake_gmock,
  eigen,
  eigen3_cmake_module,
  kdl_parser,
  kinematics_interface,
  pluginlib,
  ros2_control_test_assets,
  tf2_eigen_kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kinematics_interface_kdl";
  pkgFinal = final.rolling.kinematics_interface_kdl;
  src = srcs.kinematics_interface.kinematics_interface_kdl;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    kdl_parser
    kinematics_interface
    pluginlib
    tf2_eigen_kdl
  ];

  colconRunDepends = [
    eigen
    kdl_parser
    kinematics_interface
    pluginlib
    tf2_eigen_kdl
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ros2_control_test_assets
  ];
}
