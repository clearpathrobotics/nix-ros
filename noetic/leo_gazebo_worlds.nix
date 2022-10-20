{
  catkin,
  gazebo_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_gazebo_worlds";
  pkgFinal = final.noetic.leo_gazebo_worlds;
  src = srcs.leo_simulator.leo_gazebo_worlds;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros
  ];

  colconTestDepends = [
  ];
}
