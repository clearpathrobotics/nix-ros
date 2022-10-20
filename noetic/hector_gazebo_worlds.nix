{
  catkin,
  gazebo_ros,
  hector_gazebo_plugins,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_gazebo_worlds";
  pkgFinal = final.noetic.hector_gazebo_worlds;
  src = srcs.hector_gazebo.hector_gazebo_worlds;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo_ros
    hector_gazebo_plugins
  ];

  colconTestDepends = [
  ];
}
