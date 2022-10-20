{
  catkin,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  hector_gazebo_plugins,
  ridgeback_control,
  ridgeback_description,
  ridgeback_gazebo_plugins,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_gazebo";
  pkgFinal = final.noetic.ridgeback_gazebo;
  src = srcs.ridgeback_simulator.ridgeback_gazebo;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    hector_gazebo_plugins
    ridgeback_control
    ridgeback_description
    ridgeback_gazebo_plugins
  ];

  colconTestDepends = [
  ];
}
