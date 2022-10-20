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
  name = "qb_hand_gazebo";
  pkgFinal = final.noetic.qb_hand_gazebo;
  src = srcs.qb_hand.qb_hand_gazebo;

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
