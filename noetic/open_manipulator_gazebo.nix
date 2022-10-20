{
  catkin,
  controller_manager,
  gazebo_ros,
  gazebo_ros_control,
  roscpp,
  std_msgs,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "open_manipulator_gazebo";
  pkgFinal = final.noetic.open_manipulator_gazebo;
  src = srcs.open_manipulator_simulations.open_manipulator_gazebo;

  colconBuildDepends = [
    catkin
    controller_manager
    gazebo_ros
    gazebo_ros_control
    roscpp
    std_msgs
    urdf
    xacro
  ];

  colconRunDepends = [
    controller_manager
    gazebo_ros
    gazebo_ros_control
    roscpp
    std_msgs
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
