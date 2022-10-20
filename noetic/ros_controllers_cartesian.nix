{
  cartesian_interface,
  cartesian_trajectory_controller,
  cartesian_trajectory_interpolation,
  catkin,
  twist_controller,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_controllers_cartesian";
  pkgFinal = final.noetic.ros_controllers_cartesian;
  src = srcs.ros_controllers_cartesian.ros_controllers_cartesian;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cartesian_interface
    cartesian_trajectory_controller
    cartesian_trajectory_interpolation
    twist_controller
  ];

  colconTestDepends = [
  ];
}
