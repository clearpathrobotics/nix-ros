{
  catkin,
  controller_interface,
  effort_controllers,
  rm_common,
  robot_localization,
  roscpp,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_chassis_controllers";
  pkgFinal = final.noetic.rm_chassis_controllers;
  src = srcs.rm_controllers.rm_chassis_controllers;

  colconBuildDepends = [
    catkin
    controller_interface
    effort_controllers
    rm_common
    roscpp
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    controller_interface
    effort_controllers
    rm_common
    robot_localization
    roscpp
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
