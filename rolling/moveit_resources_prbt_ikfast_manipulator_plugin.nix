{
  ament_cmake,
  moveit_core,
  pluginlib,
  rclcpp,
  tf2_eigen,
  tf2_eigen_kdl,
  tf2_geometry_msgs,
  tf2_kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_resources_prbt_ikfast_manipulator_plugin";
  pkgFinal = final.rolling.moveit_resources_prbt_ikfast_manipulator_plugin;
  src = srcs.moveit.moveit_resources_prbt_ikfast_manipulator_plugin;

  colconBuildDepends = [
    ament_cmake
    moveit_core
    pluginlib
    rclcpp
    tf2_eigen
    tf2_eigen_kdl
    tf2_geometry_msgs
    tf2_kdl
  ];

  colconRunDepends = [
    moveit_core
    pluginlib
    rclcpp
    tf2_geometry_msgs
    tf2_kdl
  ];

  colconTestDepends = [
  ];
}
