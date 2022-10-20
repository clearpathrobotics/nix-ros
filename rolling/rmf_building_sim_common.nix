{
  ament_cmake,
  menge_vendor,
  rclcpp,
  rmf_building_map_msgs,
  rmf_door_msgs,
  rmf_lift_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_building_sim_common";
  pkgFinal = final.rolling.rmf_building_sim_common;
  src = srcs.rmf_simulation.rmf_building_sim_common;

  colconBuildDepends = [
    ament_cmake
    menge_vendor
    rclcpp
    rmf_building_map_msgs
    rmf_door_msgs
    rmf_lift_msgs
  ];

  colconRunDepends = [
    menge_vendor
    rclcpp
    rmf_building_map_msgs
    rmf_door_msgs
    rmf_lift_msgs
  ];

  colconTestDepends = [
  ];
}
