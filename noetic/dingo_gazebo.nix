{
  catkin,
  dingo_control,
  dingo_description,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  hector_gazebo_plugins,
  ridgeback_gazebo_plugins,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_gazebo";
  pkgFinal = final.noetic.dingo_gazebo;
  src = srcs.dingo_simulator.dingo_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dingo_control
    dingo_description
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    hector_gazebo_plugins
    ridgeback_gazebo_plugins
  ];

  colconTestDepends = [
    roslaunch
  ];
}
