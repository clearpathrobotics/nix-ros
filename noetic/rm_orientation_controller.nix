{
  angles,
  catkin,
  controller_interface,
  forward_command_controller,
  pluginlib,
  rm_common,
  roscpp,
  sensor_msgs,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_orientation_controller";
  pkgFinal = final.noetic.rm_orientation_controller;
  src = srcs.rm_controllers.rm_orientation_controller;

  colconBuildDepends = [
    angles
    catkin
    controller_interface
    forward_command_controller
    pluginlib
    rm_common
    roscpp
    sensor_msgs
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    angles
    controller_interface
    forward_command_controller
    pluginlib
    rm_common
    roscpp
    sensor_msgs
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
