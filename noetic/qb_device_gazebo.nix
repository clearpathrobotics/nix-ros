{
  catkin,
  controller_manager,
  gazebo_ros_control,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_gazebo";
  pkgFinal = final.noetic.qb_device_gazebo;
  src = srcs.qb_device.qb_device_gazebo;

  colconBuildDepends = [
    catkin
    controller_manager
    gazebo_ros_control
    roscpp
  ];

  colconRunDepends = [
    controller_manager
    gazebo_ros_control
    roscpp
  ];

  colconTestDepends = [
  ];
}
