{
  catkin,
  gazebo_dev,
  gazebo_ros,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_gazebo_plugins";
  pkgFinal = final.noetic.leo_gazebo_plugins;
  src = srcs.leo_simulator.leo_gazebo_plugins;

  colconBuildDepends = [
    catkin
    gazebo_dev
    gazebo_ros
    roscpp
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
