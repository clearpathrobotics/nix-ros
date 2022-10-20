{
  catkin,
  industrial_deprecated,
  industrial_msgs,
  industrial_robot_client,
  industrial_robot_simulator,
  industrial_trajectory_filters,
  industrial_utils,
  simple_message,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_core";
  pkgFinal = final.noetic.industrial_core;
  src = srcs.industrial_core.industrial_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    industrial_deprecated
    industrial_msgs
    industrial_robot_client
    industrial_robot_simulator
    industrial_trajectory_filters
    industrial_utils
    simple_message
  ];

  colconTestDepends = [
  ];
}
