{
  catkin,
  gazebo_plugins,
  gazebo_ros,
  gazebo_ros_control,
  hector_gazebo_plugins,
  jackal_control,
  jackal_description,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jackal_gazebo";
  pkgFinal = final.noetic.jackal_gazebo;
  src = srcs.jackal_simulator.jackal_gazebo;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    gazebo_plugins
    gazebo_ros
    gazebo_ros_control
    hector_gazebo_plugins
    jackal_control
    jackal_description
  ];

  colconTestDepends = [
  ];
}
