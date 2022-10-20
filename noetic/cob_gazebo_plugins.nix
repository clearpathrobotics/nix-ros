{
  catkin,
  gazebo,
  gazebo_ros,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_gazebo_plugins";
  pkgFinal = final.noetic.cob_gazebo_plugins;
  src = srcs.cob_gazebo_plugins.cob_gazebo_plugins;

  colconBuildDepends = [
    catkin
    gazebo
    gazebo_ros
    roscpp
  ];

  colconRunDepends = [
    gazebo
    gazebo_ros
    roscpp
  ];

  colconTestDepends = [
  ];
}
