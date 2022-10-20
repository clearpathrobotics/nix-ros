{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  autoware_auto_control_msgs,
  autoware_auto_geometry_msgs,
  autoware_auto_mapping_msgs,
  autoware_auto_perception_msgs,
  autoware_auto_planning_msgs,
  autoware_auto_system_msgs,
  autoware_auto_vehicle_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_auto_msgs";
  pkgFinal = final.rolling.autoware_auto_msgs;
  src = srcs.autoware_auto_msgs.autoware_auto_msgs;

  colconBuildDepends = [
    ament_cmake_auto
  ];

  colconRunDepends = [
    autoware_auto_control_msgs
    autoware_auto_geometry_msgs
    autoware_auto_mapping_msgs
    autoware_auto_perception_msgs
    autoware_auto_planning_msgs
    autoware_auto_system_msgs
    autoware_auto_vehicle_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
