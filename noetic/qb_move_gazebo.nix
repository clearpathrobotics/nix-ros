{
  catkin,
  controller_manager,
  gazebo_ros_control,
  qb_device_gazebo,
  qb_device_hardware_interface,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_move_gazebo";
  pkgFinal = final.noetic.qb_move_gazebo;
  src = srcs.qb_move.qb_move_gazebo;

  colconBuildDepends = [
    catkin
    controller_manager
    gazebo_ros_control
    qb_device_gazebo
    qb_device_hardware_interface
    roscpp
  ];

  colconRunDepends = [
    controller_manager
    gazebo_ros_control
    qb_device_gazebo
    qb_device_hardware_interface
    roscpp
  ];

  colconTestDepends = [
  ];
}
