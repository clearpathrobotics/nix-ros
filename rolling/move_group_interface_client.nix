{
  ament_cmake,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  libyamlcpp,
  moveit_ros_planning_interface,
  smacc2,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_group_interface_client";
  pkgFinal = final.rolling.move_group_interface_client;
  src = srcs.SMACC2.move_group_interface_client;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    libyamlcpp
    moveit_ros_planning_interface
    smacc2
    tf2
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    libyamlcpp
    moveit_ros_planning_interface
    smacc2
    tf2
    tf2_geometry_msgs
    tf2_ros
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
